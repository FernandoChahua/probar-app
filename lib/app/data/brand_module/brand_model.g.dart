// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandModel _$$_BrandModelFromJson(Map<String, dynamic> json) =>
    _$_BrandModel(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      urlLogoLink: json['urlLogoLink'] as String? ?? '',
      urlLogo: json['urlLogo'] as String? ?? '',
      status: json['status'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$_BrandModelToJson(_$_BrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'urlLogoLink': instance.urlLogoLink,
      'urlLogo': instance.urlLogo,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };
