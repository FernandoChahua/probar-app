import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prob_ar_app/app/data/product_module/product_model.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
abstract class ProductResponse with _$ProductResponse {
   factory ProductResponse({
    required int limit,
    required int page,
    required int total,
    @JsonKey(name: 'total_pages') required int totalPages,
    required List<ProductModel> results,
  }) = _ProductResponse;
   factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);
}