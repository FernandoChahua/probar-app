// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantResponse _$$_VariantResponseFromJson(Map<String, dynamic> json) =>
    _$_VariantResponse(
      limit: json['limit'] as int,
      page: json['page'] as int,
      total: json['total'] as int,
      totalPages: json['total_pages'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => VariantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VariantResponseToJson(_$_VariantResponse instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'results': instance.results,
    };
