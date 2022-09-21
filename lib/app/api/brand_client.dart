import 'package:dio/dio.dart';
import 'package:prob_ar_app/app/data/brand_module/brand_response.dart';
import 'package:retrofit/http.dart';

part 'brand_client.g.dart';

@RestApi()
abstract class BrandClient {
  factory BrandClient(Dio dio) = _BrandClient;

  @GET("/brands")
  Future<BrandResponse> getBrands({
    @Query("limit") required int limit,
    @Query("page") required int page,
    @Query("title") required String title,
  });
}
