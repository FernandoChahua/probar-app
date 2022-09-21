import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prob_ar_app/app/data/brand_module/brand_model.dart';
import 'package:prob_ar_app/app/data/product_module/product_model.dart';
import 'package:prob_ar_app/app/data/variant_module/config_ar_model.dart';

part 'variant_model.freezed.dart';
part 'variant_model.g.dart';

@freezed
abstract class VariantModel with _$VariantModel {
  factory VariantModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String price,
    @Default('') String colorName,
    @Default('') String colorRGB,
    @Default('') String urlImage,
    @Default('') String size,
    @Default('') String status,
    ProductModel? product,
    BrandModel? brand,
    ConfigArModel? configAR,
    @Default('') String createdAt,
    @Default(false) bool isFavorite,
  }) = _VariantModel;
  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);
}
