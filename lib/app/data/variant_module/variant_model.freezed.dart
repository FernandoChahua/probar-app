// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantModel _$VariantModelFromJson(Map<String, dynamic> json) {
  return _VariantModel.fromJson(json);
}

/// @nodoc
mixin _$VariantModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get colorName => throw _privateConstructorUsedError;
  String get colorRGB => throw _privateConstructorUsedError;
  String get urlImage => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;
  ConfigArModel? get configAR => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantModelCopyWith<VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantModelCopyWith<$Res> {
  factory $VariantModelCopyWith(
          VariantModel value, $Res Function(VariantModel) then) =
      _$VariantModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String description,
      String price,
      String colorName,
      String colorRGB,
      String urlImage,
      String size,
      String status,
      ProductModel? product,
      BrandModel? brand,
      ConfigArModel? configAR,
      String createdAt,
      bool isFavorite});

  $ProductModelCopyWith<$Res>? get product;
  $BrandModelCopyWith<$Res>? get brand;
  $ConfigArModelCopyWith<$Res>? get configAR;
}

/// @nodoc
class _$VariantModelCopyWithImpl<$Res> implements $VariantModelCopyWith<$Res> {
  _$VariantModelCopyWithImpl(this._value, this._then);

  final VariantModel _value;
  // ignore: unused_field
  final $Res Function(VariantModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? colorName = freezed,
    Object? colorRGB = freezed,
    Object? urlImage = freezed,
    Object? size = freezed,
    Object? status = freezed,
    Object? product = freezed,
    Object? brand = freezed,
    Object? configAR = freezed,
    Object? createdAt = freezed,
    Object? isFavorite = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      colorName: colorName == freezed
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String,
      colorRGB: colorRGB == freezed
          ? _value.colorRGB
          : colorRGB // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: urlImage == freezed
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      configAR: configAR == freezed
          ? _value.configAR
          : configAR // ignore: cast_nullable_to_non_nullable
              as ConfigArModel?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }

  @override
  $BrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }

  @override
  $ConfigArModelCopyWith<$Res>? get configAR {
    if (_value.configAR == null) {
      return null;
    }

    return $ConfigArModelCopyWith<$Res>(_value.configAR!, (value) {
      return _then(_value.copyWith(configAR: value));
    });
  }
}

/// @nodoc
abstract class _$$_VariantModelCopyWith<$Res>
    implements $VariantModelCopyWith<$Res> {
  factory _$$_VariantModelCopyWith(
          _$_VariantModel value, $Res Function(_$_VariantModel) then) =
      __$$_VariantModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String description,
      String price,
      String colorName,
      String colorRGB,
      String urlImage,
      String size,
      String status,
      ProductModel? product,
      BrandModel? brand,
      ConfigArModel? configAR,
      String createdAt,
      bool isFavorite});

  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $BrandModelCopyWith<$Res>? get brand;
  @override
  $ConfigArModelCopyWith<$Res>? get configAR;
}

/// @nodoc
class __$$_VariantModelCopyWithImpl<$Res>
    extends _$VariantModelCopyWithImpl<$Res>
    implements _$$_VariantModelCopyWith<$Res> {
  __$$_VariantModelCopyWithImpl(
      _$_VariantModel _value, $Res Function(_$_VariantModel) _then)
      : super(_value, (v) => _then(v as _$_VariantModel));

  @override
  _$_VariantModel get _value => super._value as _$_VariantModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? colorName = freezed,
    Object? colorRGB = freezed,
    Object? urlImage = freezed,
    Object? size = freezed,
    Object? status = freezed,
    Object? product = freezed,
    Object? brand = freezed,
    Object? configAR = freezed,
    Object? createdAt = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$_VariantModel(
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      colorName: colorName == freezed
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String,
      colorRGB: colorRGB == freezed
          ? _value.colorRGB
          : colorRGB // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: urlImage == freezed
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      configAR: configAR == freezed
          ? _value.configAR
          : configAR // ignore: cast_nullable_to_non_nullable
              as ConfigArModel?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantModel implements _VariantModel {
  _$_VariantModel(
      {this.id = 0,
      this.title = '',
      this.description = '',
      this.price = '',
      this.colorName = '',
      this.colorRGB = '',
      this.urlImage = '',
      this.size = '',
      this.status = '',
      this.product,
      this.brand,
      this.configAR,
      this.createdAt = '',
      this.isFavorite = false});

  factory _$_VariantModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantModelFromJson(json);

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
  final String price;
  @override
  @JsonKey()
  final String colorName;
  @override
  @JsonKey()
  final String colorRGB;
  @override
  @JsonKey()
  final String urlImage;
  @override
  @JsonKey()
  final String size;
  @override
  @JsonKey()
  final String status;
  @override
  final ProductModel? product;
  @override
  final BrandModel? brand;
  @override
  final ConfigArModel? configAR;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'VariantModel(id: $id, title: $title, description: $description, price: $price, colorName: $colorName, colorRGB: $colorRGB, urlImage: $urlImage, size: $size, status: $status, product: $product, brand: $brand, configAR: $configAR, createdAt: $createdAt, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.colorName, colorName) &&
            const DeepCollectionEquality().equals(other.colorRGB, colorRGB) &&
            const DeepCollectionEquality().equals(other.urlImage, urlImage) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.configAR, configAR) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(colorName),
      const DeepCollectionEquality().hash(colorRGB),
      const DeepCollectionEquality().hash(urlImage),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(configAR),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      __$$_VariantModelCopyWithImpl<_$_VariantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantModelToJson(this);
  }
}

abstract class _VariantModel implements VariantModel {
  factory _VariantModel(
      {final int id,
      final String title,
      final String description,
      final String price,
      final String colorName,
      final String colorRGB,
      final String urlImage,
      final String size,
      final String status,
      final ProductModel? product,
      final BrandModel? brand,
      final ConfigArModel? configAR,
      final String createdAt,
      final bool isFavorite}) = _$_VariantModel;

  factory _VariantModel.fromJson(Map<String, dynamic> json) =
      _$_VariantModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get price;
  @override
  String get colorName;
  @override
  String get colorRGB;
  @override
  String get urlImage;
  @override
  String get size;
  @override
  String get status;
  @override
  ProductModel? get product;
  @override
  BrandModel? get brand;
  @override
  ConfigArModel? get configAR;
  @override
  String get createdAt;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
