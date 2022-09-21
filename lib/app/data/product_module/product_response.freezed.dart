// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  List<ProductModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res>;
  $Res call(
      {int limit,
      int page,
      int total,
      @JsonKey(name: 'total_pages') int totalPages,
      List<ProductModel> results});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  final ProductResponse _value;
  // ignore: unused_field
  final $Res Function(ProductResponse) _then;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductResponseCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$_ProductResponseCopyWith(
          _$_ProductResponse value, $Res Function(_$_ProductResponse) then) =
      __$$_ProductResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int limit,
      int page,
      int total,
      @JsonKey(name: 'total_pages') int totalPages,
      List<ProductModel> results});
}

/// @nodoc
class __$$_ProductResponseCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res>
    implements _$$_ProductResponseCopyWith<$Res> {
  __$$_ProductResponseCopyWithImpl(
      _$_ProductResponse _value, $Res Function(_$_ProductResponse) _then)
      : super(_value, (v) => _then(v as _$_ProductResponse));

  @override
  _$_ProductResponse get _value => super._value as _$_ProductResponse;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_ProductResponse(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductResponse implements _ProductResponse {
  _$_ProductResponse(
      {required this.limit,
      required this.page,
      required this.total,
      @JsonKey(name: 'total_pages') required this.totalPages,
      required final List<ProductModel> results})
      : _results = results;

  factory _$_ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductResponseFromJson(json);

  @override
  final int limit;
  @override
  final int page;
  @override
  final int total;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  final List<ProductModel> _results;
  @override
  List<ProductModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ProductResponse(limit: $limit, page: $page, total: $total, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductResponse &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_ProductResponseCopyWith<_$_ProductResponse> get copyWith =>
      __$$_ProductResponseCopyWithImpl<_$_ProductResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductResponseToJson(this);
  }
}

abstract class _ProductResponse implements ProductResponse {
  factory _ProductResponse(
      {required final int limit,
      required final int page,
      required final int total,
      @JsonKey(name: 'total_pages') required final int totalPages,
      required final List<ProductModel> results}) = _$_ProductResponse;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductResponse.fromJson;

  @override
  int get limit;
  @override
  int get page;
  @override
  int get total;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  List<ProductModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ProductResponseCopyWith<_$_ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
