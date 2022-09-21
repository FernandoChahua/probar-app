import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prob_ar_app/app/data/brand_module/brand_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  factory ProductModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String price,
    @Default('') String status,
    //required BrandModel brand,
    @Default('') String createdAt,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
