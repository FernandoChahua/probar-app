// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantResponse _$VariantResponseFromJson(Map<String, dynamic> json) {
  return _VariantResponse.fromJson(json);
}

/// @nodoc
mixin _$VariantResponse {
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  List<VariantModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantResponseCopyWith<VariantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantResponseCopyWith<$Res> {
  factory $VariantResponseCopyWith(
          VariantResponse value, $Res Function(VariantResponse) then) =
      _$VariantResponseCopyWithImpl<$Res>;
  $Res call(
      {int limit,
      int page,
      int total,
      @JsonKey(name: 'total_pages') int totalPages,
      List<VariantModel> results});
}

/// @nodoc
class _$VariantResponseCopyWithImpl<$Res>
    implements $VariantResponseCopyWith<$Res> {
  _$VariantResponseCopyWithImpl(this._value, this._then);

  final VariantResponse _value;
  // ignore: unused_field
  final $Res Function(VariantResponse) _then;

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
              as List<VariantModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_VariantResponseCopyWith<$Res>
    implements $VariantResponseCopyWith<$Res> {
  factory _$$_VariantResponseCopyWith(
          _$_VariantResponse value, $Res Function(_$_VariantResponse) then) =
      __$$_VariantResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int limit,
      int page,
      int total,
      @JsonKey(name: 'total_pages') int totalPages,
      List<VariantModel> results});
}

/// @nodoc
class __$$_VariantResponseCopyWithImpl<$Res>
    extends _$VariantResponseCopyWithImpl<$Res>
    implements _$$_VariantResponseCopyWith<$Res> {
  __$$_VariantResponseCopyWithImpl(
      _$_VariantResponse _value, $Res Function(_$_VariantResponse) _then)
      : super(_value, (v) => _then(v as _$_VariantResponse));

  @override
  _$_VariantResponse get _value => super._value as _$_VariantResponse;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_VariantResponse(
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
              as List<VariantModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantResponse implements _VariantResponse {
  _$_VariantResponse(
      {required this.limit,
      required this.page,
      required this.total,
      @JsonKey(name: 'total_pages') required this.totalPages,
      required final List<VariantModel> results})
      : _results = results;

  factory _$_VariantResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VariantResponseFromJson(json);

  @override
  final int limit;
  @override
  final int page;
  @override
  final int total;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  final List<VariantModel> _results;
  @override
  List<VariantModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'VariantResponse(limit: $limit, page: $page, total: $total, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantResponse &&
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
  _$$_VariantResponseCopyWith<_$_VariantResponse> get copyWith =>
      __$$_VariantResponseCopyWithImpl<_$_VariantResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantResponseToJson(this);
  }
}

abstract class _VariantResponse implements VariantResponse {
  factory _VariantResponse(
      {required final int limit,
      required final int page,
      required final int total,
      @JsonKey(name: 'total_pages') required final int totalPages,
      required final List<VariantModel> results}) = _$_VariantResponse;

  factory _VariantResponse.fromJson(Map<String, dynamic> json) =
      _$_VariantResponse.fromJson;

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
  List<VariantModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_VariantResponseCopyWith<_$_VariantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
