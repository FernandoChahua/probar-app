// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandModel _$BrandModelFromJson(Map<String, dynamic> json) {
  return _BrandModel.fromJson(json);
}

/// @nodoc
mixin _$BrandModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get urlLogoLink => throw _privateConstructorUsedError;
  String get urlLogo => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandModelCopyWith<BrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandModelCopyWith<$Res> {
  factory $BrandModelCopyWith(
          BrandModel value, $Res Function(BrandModel) then) =
      _$BrandModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String description,
      String urlLogoLink,
      String urlLogo,
      String status,
      String createdAt});
}

/// @nodoc
class _$BrandModelCopyWithImpl<$Res> implements $BrandModelCopyWith<$Res> {
  _$BrandModelCopyWithImpl(this._value, this._then);

  final BrandModel _value;
  // ignore: unused_field
  final $Res Function(BrandModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? urlLogoLink = freezed,
    Object? urlLogo = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urlLogoLink: urlLogoLink == freezed
          ? _value.urlLogoLink
          : urlLogoLink // ignore: cast_nullable_to_non_nullable
              as String,
      urlLogo: urlLogo == freezed
          ? _value.urlLogo
          : urlLogo // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BrandModelCopyWith<$Res>
    implements $BrandModelCopyWith<$Res> {
  factory _$$_BrandModelCopyWith(
          _$_BrandModel value, $Res Function(_$_BrandModel) then) =
      __$$_BrandModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String description,
      String urlLogoLink,
      String urlLogo,
      String status,
      String createdAt});
}

/// @nodoc
class __$$_BrandModelCopyWithImpl<$Res> extends _$BrandModelCopyWithImpl<$Res>
    implements _$$_BrandModelCopyWith<$Res> {
  __$$_BrandModelCopyWithImpl(
      _$_BrandModel _value, $Res Function(_$_BrandModel) _then)
      : super(_value, (v) => _then(v as _$_BrandModel));

  @override
  _$_BrandModel get _value => super._value as _$_BrandModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? urlLogoLink = freezed,
    Object? urlLogo = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_BrandModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urlLogoLink: urlLogoLink == freezed
          ? _value.urlLogoLink
          : urlLogoLink // ignore: cast_nullable_to_non_nullable
              as String,
      urlLogo: urlLogo == freezed
          ? _value.urlLogo
          : urlLogo // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandModel implements _BrandModel {
  _$_BrandModel(
      {this.id = 0,
      this.title = '',
      this.description = '',
      this.urlLogoLink = '',
      this.urlLogo = '',
      this.status = '',
      this.createdAt = ''});

  factory _$_BrandModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String urlLogoLink;
  @override
  @JsonKey()
  final String urlLogo;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String createdAt;

  @override
  String toString() {
    return 'BrandModel(id: $id, title: $title, description: $description, urlLogoLink: $urlLogoLink, urlLogo: $urlLogo, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.urlLogoLink, urlLogoLink) &&
            const DeepCollectionEquality().equals(other.urlLogo, urlLogo) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(urlLogoLink),
      const DeepCollectionEquality().hash(urlLogo),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_BrandModelCopyWith<_$_BrandModel> get copyWith =>
      __$$_BrandModelCopyWithImpl<_$_BrandModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandModelToJson(this);
  }
}

abstract class _BrandModel implements BrandModel {
  factory _BrandModel(
      {final int id,
      final String title,
      final String description,
      final String urlLogoLink,
      final String urlLogo,
      final String status,
      final String createdAt}) = _$_BrandModel;

  factory _BrandModel.fromJson(Map<String, dynamic> json) =
      _$_BrandModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get urlLogoLink;
  @override
  String get urlLogo;
  @override
  String get status;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_BrandModelCopyWith<_$_BrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}
