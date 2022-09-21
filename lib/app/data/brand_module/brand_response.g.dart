// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandResponse _$$_BrandResponseFromJson(Map<String, dynamic> json) =>
    _$_BrandResponse(
      limit: json['limit'] as int,
      page: json['page'] as int,
      total: json['total'] as int,
      totalPages: json['total_pages'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BrandResponseToJson(_$_BrandResponse instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'results': instance.results,
    };
