// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantModel _$$_VariantModelFromJson(Map<String, dynamic> json) =>
    _$_VariantModel(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: json['price'] as String? ?? '',
      colorName: json['colorName'] as String? ?? '',
      colorRGB: json['colorRGB'] as String? ?? '',
      urlImage: json['urlImage'] as String? ?? '',
      size: json['size'] as String? ?? '',
      status: json['status'] as String? ?? '',
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      configAR: json['configAR'] == null
          ? null
          : ConfigArModel.fromJson(json['configAR'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String? ?? '',
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VariantModelToJson(_$_VariantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'colorName': instance.colorName,
      'colorRGB': instance.colorRGB,
      'urlImage': instance.urlImage,
      'size': instance.size,
      'status': instance.status,
      'product': instance.product,
      'brand': instance.brand,
      'configAR': instance.configAR,
      'createdAt': instance.createdAt,
      'isFavorite': instance.isFavorite,
    };
