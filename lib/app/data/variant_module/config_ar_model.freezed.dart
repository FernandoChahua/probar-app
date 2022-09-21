// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_ar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigArModel _$ConfigArModelFromJson(Map<String, dynamic> json) {
  return _ConfigArModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigArModel {
  String get urlLeftModel => throw _privateConstructorUsedError;
  String get urlRightModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigArModelCopyWith<ConfigArModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigArModelCopyWith<$Res> {
  factory $ConfigArModelCopyWith(
          ConfigArModel value, $Res Function(ConfigArModel) then) =
      _$ConfigArModelCopyWithImpl<$Res>;
  $Res call({String urlLeftModel, String urlRightModel});
}

/// @nodoc
class _$ConfigArModelCopyWithImpl<$Res>
    implements $ConfigArModelCopyWith<$Res> {
  _$ConfigArModelCopyWithImpl(this._value, this._then);

  final ConfigArModel _value;
  // ignore: unused_field
  final $Res Function(ConfigArModel) _then;

  @override
  $Res call({
    Object? urlLeftModel = freezed,
    Object? urlRightModel = freezed,
  }) {
    return _then(_value.copyWith(
      urlLeftModel: urlLeftModel == freezed
          ? _value.urlLeftModel
          : urlLeftModel // ignore: cast_nullable_to_non_nullable
              as String,
      urlRightModel: urlRightModel == freezed
          ? _value.urlRightModel
          : urlRightModel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ConfigArModelCopyWith<$Res>
    implements $ConfigArModelCopyWith<$Res> {
  factory _$$_ConfigArModelCopyWith(
          _$_ConfigArModel value, $Res Function(_$_ConfigArModel) then) =
      __$$_ConfigArModelCopyWithImpl<$Res>;
  @override
  $Res call({String urlLeftModel, String urlRightModel});
}

/// @nodoc
class __$$_ConfigArModelCopyWithImpl<$Res>
    extends _$ConfigArModelCopyWithImpl<$Res>
    implements _$$_ConfigArModelCopyWith<$Res> {
  __$$_ConfigArModelCopyWithImpl(
      _$_ConfigArModel _value, $Res Function(_$_ConfigArModel) _then)
      : super(_value, (v) => _then(v as _$_ConfigArModel));

  @override
  _$_ConfigArModel get _value => super._value as _$_ConfigArModel;

  @override
  $Res call({
    Object? urlLeftModel = freezed,
    Object? urlRightModel = freezed,
  }) {
    return _then(_$_ConfigArModel(
      urlLeftModel: urlLeftModel == freezed
          ? _value.urlLeftModel
          : urlLeftModel // ignore: cast_nullable_to_non_nullable
              as String,
      urlRightModel: urlRightModel == freezed
          ? _value.urlRightModel
          : urlRightModel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigArModel implements _ConfigArModel {
  _$_ConfigArModel({this.urlLeftModel = '', this.urlRightModel = ''});

  factory _$_ConfigArModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigArModelFromJson(json);

  @override
  @JsonKey()
  final String urlLeftModel;
  @override
  @JsonKey()
  final String urlRightModel;

  @override
  String toString() {
    return 'ConfigArModel(urlLeftModel: $urlLeftModel, urlRightModel: $urlRightModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigArModel &&
            const DeepCollectionEquality()
                .equals(other.urlLeftModel, urlLeftModel) &&
            const DeepCollectionEquality()
                .equals(other.urlRightModel, urlRightModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(urlLeftModel),
      const DeepCollectionEquality().hash(urlRightModel));

  @JsonKey(ignore: true)
  @override
  _$$_ConfigArModelCopyWith<_$_ConfigArModel> get copyWith =>
      __$$_ConfigArModelCopyWithImpl<_$_ConfigArModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigArModelToJson(this);
  }
}

abstract class _ConfigArModel implements ConfigArModel {
  factory _ConfigArModel(
      {final String urlLeftModel,
      final String urlRightModel}) = _$_ConfigArModel;

  factory _ConfigArModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigArModel.fromJson;

  @override
  String get urlLeftModel;
  @override
  String get urlRightModel;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigArModelCopyWith<_$_ConfigArModel> get copyWith =>
      throw _privateConstructorUsedError;
}
