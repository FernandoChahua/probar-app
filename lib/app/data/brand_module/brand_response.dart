import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prob_ar_app/app/data/brand_module/brand_model.dart';

part 'brand_response.freezed.dart';
part 'brand_response.g.dart';

@freezed
abstract class BrandResponse with _$BrandResponse {
  factory BrandResponse({
    required int limit,
    required int page,
    required int total,
    @JsonKey(name: 'total_pages') required int totalPages,
    required List<BrandModel> results,
  }) = _BrandResponse;
  factory BrandResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandResponseFromJson(json);
}
