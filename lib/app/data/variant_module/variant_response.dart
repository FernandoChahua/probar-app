import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prob_ar_app/app/data/variant_module/variant_model.dart';

part 'variant_response.freezed.dart';
part 'variant_response.g.dart';

@freezed
abstract class VariantResponse with _$VariantResponse {
  factory VariantResponse({
    required int limit,
    required int page,
    required int total,
    @JsonKey(name: 'total_pages') required int totalPages,
    required List<VariantModel> results,
  }) = _VariantResponse;
  factory VariantResponse.fromJson(Map<String, dynamic> json) =>
      _$VariantResponseFromJson(json);
}
