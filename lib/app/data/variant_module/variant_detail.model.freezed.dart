// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variant_detail.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantDetailModel _$VariantDetailModelFromJson(Map<String, dynamic> json) {
  return _VariantDetailModel.fromJson(json);
}

/// @nodoc
mixin _$VariantDetailModel {
  int get idSelected => throw _privateConstructorUsedError;
  List<VariantModel> get productVariants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantDetailModelCopyWith<VariantDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantDetailModelCopyWith<$Res> {
  factory $VariantDetailModelCopyWith(
          VariantDetailModel value, $Res Function(VariantDetailModel) then) =
      _$VariantDetailModelCopyWithImpl<$Res>;
  $Res call({int idSelected, List<VariantModel> productVariants});
}

/// @nodoc
class _$VariantDetailModelCopyWithImpl<$Res>
    implements $VariantDetailModelCopyWith<$Res> {
  _$VariantDetailModelCopyWithImpl(this._value, this._then);

  final VariantDetailModel _value;
  // ignore: unused_field
  final $Res Function(VariantDetailModel) _then;

  @override
  $Res call({
    Object? idSelected = freezed,
    Object? productVariants = freezed,
  }) {
    return _then(_value.copyWith(
      idSelected: idSelected == freezed
          ? _value.idSelected
          : idSelected // ignore: cast_nullable_to_non_nullable
              as int,
      productVariants: productVariants == freezed
          ? _value.productVariants
          : productVariants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_VariantDetailModelCopyWith<$Res>
    implements $VariantDetailModelCopyWith<$Res> {
  factory _$$_VariantDetailModelCopyWith(_$_VariantDetailModel value,
          $Res Function(_$_VariantDetailModel) then) =
      __$$_VariantDetailModelCopyWithImpl<$Res>;
  @override
  $Res call({int idSelected, List<VariantModel> productVariants});
}

/// @nodoc
class __$$_VariantDetailModelCopyWithImpl<$Res>
    extends _$VariantDetailModelCopyWithImpl<$Res>
    implements _$$_VariantDetailModelCopyWith<$Res> {
  __$$_VariantDetailModelCopyWithImpl(
      _$_VariantDetailModel _value, $Res Function(_$_VariantDetailModel) _then)
      : super(_value, (v) => _then(v as _$_VariantDetailModel));

  @override
  _$_VariantDetailModel get _value => super._value as _$_VariantDetailModel;

  @override
  $Res call({
    Object? idSelected = freezed,
    Object? productVariants = freezed,
  }) {
    return _then(_$_VariantDetailModel(
      idSelected: idSelected == freezed
          ? _value.idSelected
          : idSelected // ignore: cast_nullable_to_non_nullable
              as int,
      productVariants: productVariants == freezed
          ? _value._productVariants
          : productVariants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantDetailModel implements _VariantDetailModel {
  _$_VariantDetailModel(
      {this.idSelected = 0, required final List<VariantModel> productVariants})
      : _productVariants = productVariants;

  factory _$_VariantDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantDetailModelFromJson(json);

  @override
  @JsonKey()
  final int idSelected;
  final List<VariantModel> _productVariants;
  @override
  List<VariantModel> get productVariants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productVariants);
  }

  @override
  String toString() {
    return 'VariantDetailModel(idSelected: $idSelected, productVariants: $productVariants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantDetailModel &&
            const DeepCollectionEquality()
                .equals(other.idSelected, idSelected) &&
            const DeepCollectionEquality()
                .equals(other._productVariants, _productVariants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idSelected),
      const DeepCollectionEquality().hash(_productVariants));

  @JsonKey(ignore: true)
  @override
  _$$_VariantDetailModelCopyWith<_$_VariantDetailModel> get copyWith =>
      __$$_VariantDetailModelCopyWithImpl<_$_VariantDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantDetailModelToJson(this);
  }
}

abstract class _VariantDetailModel implements VariantDetailModel {
  factory _VariantDetailModel(
          {final int idSelected,
          required final List<VariantModel> productVariants}) =
      _$_VariantDetailModel;

  factory _VariantDetailModel.fromJson(Map<String, dynamic> json) =
      _$_VariantDetailModel.fromJson;

  @override
  int get idSelected;
  @override
  List<VariantModel> get productVariants;
  @override
  @JsonKey(ignore: true)
  _$$_VariantDetailModelCopyWith<_$_VariantDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
