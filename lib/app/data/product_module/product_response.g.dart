// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductResponse _$$_ProductResponseFromJson(Map<String, dynamic> json) =>
    _$_ProductResponse(
      limit: json['limit'] as int,
      page: json['page'] as int,
      total: json['total'] as int,
      totalPages: json['total_pages'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductResponseToJson(_$_ProductResponse instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'results': instance.results,
    };
