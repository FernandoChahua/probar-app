import 'package:dio/dio.dart';
import 'package:prob_ar_app/app/data/variant_module/variant_detail.model.dart';
import 'package:prob_ar_app/app/data/variant_module/variant_response.dart';
import 'package:retrofit/http.dart';

part 'variant_client.g.dart';

@RestApi()
abstract class VariantClient {
  factory VariantClient(Dio dio) = _VariantClient;

  @GET("/product-variants/catalog")
  Future<VariantResponse> getVariants({
    @Query("limit") required int limit,
    @Query("page") required int page,
    @Query("brandId") required int brandId,
    @Query("title") required String title,
  });

  @GET("/product-variants/catalog")
  Future<VariantResponse> getFavorites({
    @Query("limit") required int limit,
    @Query("page") required int page,
    @Query("onlyFavorites") required int onlyFavorites,
    @Query("title") required String title,
  });

  @POST("/favorites/toggle/{id}")
  Future<void> setFavorite({
    @Path("id") required int id,
  });

  @GET("/product-variants/{id}")
  Future<VariantDetailModel> getVariantsDetails({
    @Path("id") required int id,
  });
}
