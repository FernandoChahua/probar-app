import 'package:dio/dio.dart';
import 'package:prob_ar_app/app/data/product_module/product_model.dart';
import 'package:prob_ar_app/app/data/product_module/product_response.dart';
import 'package:retrofit/http.dart';

part 'product_client.g.dart';

@RestApi()
abstract class ProductClient {
  factory ProductClient(Dio dio) = _ProductClient;

  @GET("/products")
  Future<ProductResponse> getProducts({
    @Query("limit") required int limit,
    @Query("page") required int page,
  });
}
