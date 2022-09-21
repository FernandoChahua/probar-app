import 'package:dio/dio.dart';
import 'package:prob_ar_app/app/data/auth_module/payload_model.dart';
import 'package:prob_ar_app/app/data/auth_module/token_model.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio) = _AuthClient;

  @POST("/auth/signin")
  Future<TokenModel> getToken(
    @Body() Map<String, dynamic> map,
  );

  @POST("/auth/signup")
  Future<void> registerUser(
    @Body() Map<String, dynamic> map,
  );
}
