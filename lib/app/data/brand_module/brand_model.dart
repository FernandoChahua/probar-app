import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
abstract class BrandModel with _$BrandModel {
  factory BrandModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String urlLogoLink,
    @Default('') String urlLogo,
    @Default('') String status,
    @Default('') String createdAt,
  }) = _BrandModel;
  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}
