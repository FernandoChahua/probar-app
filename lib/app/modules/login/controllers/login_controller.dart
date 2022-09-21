import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prob_ar_app/app/api/auth/auth_client.dart';
import 'package:prob_ar_app/app/common/functions/custom_logger.dart';
import 'package:prob_ar_app/app/common/services/api_service.dart';
import 'package:prob_ar_app/app/common/services/login_cache_service.dart';
import 'package:prob_ar_app/app/common/services/nav_service.dart';
import 'package:prob_ar_app/app/data/state_model.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Rx<StateModel> state = StateModel().obs;

  late AuthClient client;

  @override
  void onInit() {
    final authService = Get.find<ApiService>();
    client = AuthClient(authService.dio);
    usernameController.text = Get.find<LoginCacheService>().username;
    super.onInit();
  }

  Future signIn({bool saveData = false}) async {
    state(StateModel.loading());
    final Map<String, dynamic> body = {
      "username": usernameController.text,
      "password": passwordController.text,
    };
    Get.find<NavigationService>().currentIndex(0);
    CustomLogger.bodyLogger(body);
    /*try {
      final data = await client.getToken(
        body,
      );
      Get.find<AuthService>().updateTokens(data);
      Get.find<LoginCacheService>().username = usernameController.text;
      Get.offAndToNamed("/home");
    } on DioError catch (e) {
      state(StateModel());
      Toast.show(
        "Aviso",
        (e.response!.data as Map<String, dynamic>)["message"].toString(),
      );

      CustomLogger.dioErrorLog(e);

      throw Exception(e);
    }*/
    state(StateModel());
    Get.offAndToNamed("/home");
  }
}
