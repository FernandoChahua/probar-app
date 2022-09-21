import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:prob_ar_app/app/api/variant_client.dart';
import 'package:prob_ar_app/app/common/functions/custom_logger.dart';
import 'package:prob_ar_app/app/common/functions/toast.dart';
import 'package:prob_ar_app/app/common/services/api_service.dart';
import 'package:prob_ar_app/app/data/state_model.dart';
import 'package:prob_ar_app/app/data/variant_module/variant_detail.model.dart';
import 'package:prob_ar_app/app/data/variant_module/variant_model.dart';

class ModelController extends GetxController {
  ModelController({required int id}) {
    _id = id.obs;
  }
  set id(int id) => _id(id);
  int get id => _id();

  late VariantClient client;
  final stateScreen = StateModel<VariantDetailModel>().obs;

  late final selected = VariantModel().obs;
  late final RxInt _id;
  //final selected = 0.obs;

  void _loading() {
    stateScreen.value = StateModel.loading();
    stateScreen.refresh();
  }

  void setSelected({
    required List<VariantModel> data,
    required int selectedId,
  }) {
    for (final d in data) {
      if (d.id == selectedId) {
        selected(d);
        selected.refresh();
        return;
      }
    }
  }

  void _error(DioError e) {
    stateScreen.value = StateModel();
    CustomLogger.dioErrorLog(e);
    Toast.showError(
      body: (e.response!.data as Map<String, dynamic>)["message"].toString(),
    );
    throw Exception(e);
  }

  void _data(VariantDetailModel data) {
    stateScreen.value = StateModel.data(data);
    setSelected(data: data.productVariants, selectedId: data.idSelected);
    selected.refresh();
    stateScreen.refresh();
    CustomLogger.wtf(data);
  }

  @override
  void onInit() {
    final authService = Get.find<ApiService>();
    client = VariantClient(authService.dio);
    fetchVariantsDetails();
    super.onInit();
    super.onReady();
  }

  Future<void> fetchVariantsDetails() async {
    _loading();
    try {
      final data = await client.getVariantsDetails(
        id: id,
      );
      _data(data);
    } on DioError catch (e) {
      _error(e);
    }
  }
}
