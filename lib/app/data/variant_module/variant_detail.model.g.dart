// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantDetailModel _$$_VariantDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_VariantDetailModel(
      idSelected: json['idSelected'] as int? ?? 0,
      productVariants: (json['productVariants'] as List<dynamic>)
          .map((e) => VariantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VariantDetailModelToJson(
        _$_VariantDetailModel instance) =>
    <String, dynamic>{
      'idSelected': instance.idSelected,
      'productVariants': instance.productVariants,
    };
