import 'package:get/get.dart';
import 'package:prob_ar_app/app/common/constants/http_constants.dart';
import 'package:prob_ar_app/app/common/freezed/environment.dart';

class EnvironmentService extends GetxService {
  final Environment environment;
  late String baseUrl;
  late String baseSocketUrl;

  EnvironmentService({required this.environment}) {
    environment.when(
      local: () {
        baseUrl = HttpConstants.localUrl;
        baseSocketUrl = HttpConstants.localSocketUrl;
      },
      dev: () {
        baseUrl = HttpConstants.devUrl;
        baseSocketUrl = HttpConstants.devSocketUrl;
      },
      prod: () {
        baseUrl = HttpConstants.prodUrl;
        baseSocketUrl = HttpConstants.prodSocketUrl;
      },
    );
  }
}
