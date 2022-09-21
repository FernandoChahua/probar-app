import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:prob_ar_app/app/api/brand_client.dart';
import 'package:prob_ar_app/app/common/functions/custom_logger.dart';
import 'package:prob_ar_app/app/common/functions/toast.dart';
import 'package:prob_ar_app/app/common/services/api_service.dart';
import 'package:prob_ar_app/app/data/brand_module/brand_response.dart';
import 'package:prob_ar_app/app/data/state_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeController extends GetxController {
  late BrandClient client;
  final stateScreen = StateModel<BrandResponse>().obs;
  final Rx<int> page = 1.obs;
  @override
  void onInit() {
    final authService = Get.find<ApiService>();
    client = BrandClient(authService.dio);
    fetchAddresses();
    super.onInit();
    super.onReady();
  }

  void _loading() {
    stateScreen.value = StateModel.loading();
    stateScreen.refresh();
  }

  void _error(DioError e) {
    stateScreen.value = StateModel();
    CustomLogger.dioErrorLog(e);
    Toast.showError(
      body: (e.response!.data as Map<String, dynamic>)["message"].toString(),
    );
    throw Exception(e);
  }

  void _data(BrandResponse data) {
    stateScreen.value = StateModel.data(data);

    stateScreen.refresh();
    CustomLogger.wtf(data);
  }

  void _moreData(BrandResponse data) {
    stateScreen().maybeWhen(
      null,
      data: (metadata) {
        final aux =
            metadata.copyWith(results: [...metadata.results, ...data.results]);
        _data(aux);
      },
      orElse: () {},
    );
  }

  Future<LoadStatus> loadMore({int limit = 10}) async {
    LoadStatus status = LoadStatus.idle;
    stateScreen().maybeWhen(
      null,
      data: (metadata) async {
        if (page < metadata.totalPages) {
          page.value++;
          try {
            final data =
                await client.getBrands(limit: limit, page: page(), title: '');
            _moreData(data);
            status = LoadStatus.idle;
          } on DioError catch (e) {
            Toast.show('Aviso', 'Error al cargar mensajes');
            _error(e);
            return LoadStatus.failed;
          }
        } else {
          status = LoadStatus.noMore;
        }
      },
      orElse: () {
        status = LoadStatus.idle;
      },
    );
    return status;
  }

  Future<RefreshStatus> fetchAddresses({int limit = 10}) async {
    page(1);

    _loading();
    try {
      final data = await client.getBrands(limit: limit, page: 0, title: '');
      _data(data);
      return RefreshStatus.completed;
    } on DioError catch (e) {
      _error(e);
      return RefreshStatus.failed;
    }
  }
}
