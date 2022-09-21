import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:prob_ar_app/app/api/auth/auth_client.dart';
import 'package:prob_ar_app/app/common/services/api_service.dart';
import 'package:prob_ar_app/app/common/services/hive_service.dart';
import 'package:prob_ar_app/app/data/auth_module/payload_model.dart';
import 'package:prob_ar_app/app/data/auth_module/token_model.dart';

const tokenKey = 'token';
const refreshTokenKey = 'refreshToken';
const payloadKey = 'payload';

class AuthService extends GetxService {
  late AuthClient client;
  late Box<dynamic> box;

  final attempts = 0.obs;

  void setPayload(PayloadModel payload) {
    box.put(payloadKey, payload);
  }

  bool _loadToken() {
    if (!box.containsKey(tokenKey)) return false;
    final token = box.get(tokenKey) ?? "";
    if (token != "") {
      Get.find<ApiService>().addAuthHeader('$token');
      return true;
    }
    return false;
  }

  bool isLogged() => _loadToken();

  TokenModel get token {
    return TokenModel(
      token: (box.get(tokenKey) ?? "") as String,
      refreshToken: (box.get(refreshTokenKey) ?? "") as String,
    );
  }

  PayloadModel get payload {
    return box.get(payloadKey) as PayloadModel;
  }

  void updateTokens(TokenModel token) {
    box.put(tokenKey, token.token);
    box.put(refreshTokenKey, token.refreshToken);
    Get.find<ApiService>().addAuthHeader(token.token);
  }

  void logout() {
    box.delete(tokenKey);
    box.delete(refreshTokenKey);
    box.delete(payloadKey);
    Get.offAndToNamed('/login');
  }

  /*Future<String> refresh() async {
    try {
      final data = await client.refresh(
        token.toJson(),
      );
      CustomLogger.info(data);
      updateTokens(data);
      return data.token;
    } on DioError catch (e) {
      CustomLogger.dioErrorLog(e);
      return "";
    }
  }*/

  @override
  void onInit() {
    super.onInit();
    box = Get.find<HiveService>().box;
    final authService = Get.find<ApiService>();
    client = AuthClient(authService.dio);
  }
}
