// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayloadModel _$PayloadModelFromJson(Map<String, dynamic> json) {
  return _PayloadModel.fromJson(json);
}

/// @nodoc
mixin _$PayloadModel {
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadModelCopyWith<PayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadModelCopyWith<$Res> {
  factory $PayloadModelCopyWith(
          PayloadModel value, $Res Function(PayloadModel) then) =
      _$PayloadModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
      @HiveField(0)
          int id,
      @HiveField(1)
          String username});
}

/// @nodoc
class _$PayloadModelCopyWithImpl<$Res> implements $PayloadModelCopyWith<$Res> {
  _$PayloadModelCopyWithImpl(this._value, this._then);

  final PayloadModel _value;
  // ignore: unused_field
  final $Res Function(PayloadModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PayloadModelCopyWith<$Res>
    implements $PayloadModelCopyWith<$Res> {
  factory _$$_PayloadModelCopyWith(
          _$_PayloadModel value, $Res Function(_$_PayloadModel) then) =
      __$$_PayloadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
      @HiveField(0)
          int id,
      @HiveField(1)
          String username});
}

/// @nodoc
class __$$_PayloadModelCopyWithImpl<$Res>
    extends _$PayloadModelCopyWithImpl<$Res>
    implements _$$_PayloadModelCopyWith<$Res> {
  __$$_PayloadModelCopyWithImpl(
      _$_PayloadModel _value, $Res Function(_$_PayloadModel) _then)
      : super(_value, (v) => _then(v as _$_PayloadModel));

  @override
  _$_PayloadModel get _value => super._value as _$_PayloadModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_PayloadModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'PayloadModelAdapter')
class _$_PayloadModel implements _PayloadModel {
  _$_PayloadModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
      @HiveField(0)
          required this.id,
      @HiveField(1)
          required this.username});

  factory _$_PayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_PayloadModelFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String username;

  @override
  String toString() {
    return 'PayloadModel(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayloadModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_PayloadModelCopyWith<_$_PayloadModel> get copyWith =>
      __$$_PayloadModelCopyWithImpl<_$_PayloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayloadModelToJson(this);
  }
}

abstract class _PayloadModel implements PayloadModel {
  factory _PayloadModel(
      {@JsonKey(name: 'id', required: true, disallowNullValue: true)
      @HiveField(0)
          required final int id,
      @HiveField(1)
          required final String username}) = _$_PayloadModel;

  factory _PayloadModel.fromJson(Map<String, dynamic> json) =
      _$_PayloadModel.fromJson;

  @override
  @JsonKey(name: 'id', required: true, disallowNullValue: true)
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_PayloadModelCopyWith<_$_PayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
