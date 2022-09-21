import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prob_ar_app/app/data/variant_module/variant_model.dart';

part 'variant_detail.model.freezed.dart';
part 'variant_detail.model.g.dart';

@freezed
abstract class VariantDetailModel with _$VariantDetailModel {
  factory VariantDetailModel({
    @Default(0) int idSelected,
    required List<VariantModel> productVariants,
  }) = _VariantDetailModel;
  factory VariantDetailModel.fromJson(Map<String, dynamic> json) =>
      _$VariantDetailModelFromJson(json);
}
