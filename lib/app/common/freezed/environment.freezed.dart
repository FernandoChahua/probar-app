// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Environment {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() local,
    required TResult Function() prod,
    required TResult Function() dev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    TResult Function()? dev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    TResult Function()? dev,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_Prod value) prod,
    required TResult Function(_Dev value) dev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    TResult Function(_Dev value)? dev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    TResult Function(_Dev value)? dev,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res> implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  final Environment _value;
  // ignore: unused_field
  final $Res Function(Environment) _then;
}

/// @nodoc
abstract class _$$_LocalCopyWith<$Res> {
  factory _$$_LocalCopyWith(_$_Local value, $Res Function(_$_Local) then) =
      __$$_LocalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocalCopyWithImpl<$Res> extends _$EnvironmentCopyWithImpl<$Res>
    implements _$$_LocalCopyWith<$Res> {
  __$$_LocalCopyWithImpl(_$_Local _value, $Res Function(_$_Local) _then)
      : super(_value, (v) => _then(v as _$_Local));

  @override
  _$_Local get _value => super._value as _$_Local;
}

/// @nodoc

class _$_Local implements _Local {
  _$_Local();

  @override
  String toString() {
    return 'Environment.local()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Local);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() local,
    required TResult Function() prod,
    required TResult Function() dev,
  }) {
    return local();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    TResult Function()? dev,
  }) {
    return local?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    TResult Function()? dev,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_Prod value) prod,
    required TResult Function(_Dev value) dev,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    TResult Function(_Dev value)? dev,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    TResult Function(_Dev value)? dev,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _Local implements Environment {
  factory _Local() = _$_Local;
}

/// @nodoc
abstract class _$$_ProdCopyWith<$Res> {
  factory _$$_ProdCopyWith(_$_Prod value, $Res Function(_$_Prod) then) =
      __$$_ProdCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProdCopyWithImpl<$Res> extends _$EnvironmentCopyWithImpl<$Res>
    implements _$$_ProdCopyWith<$Res> {
  __$$_ProdCopyWithImpl(_$_Prod _value, $Res Function(_$_Prod) _then)
      : super(_value, (v) => _then(v as _$_Prod));

  @override
  _$_Prod get _value => super._value as _$_Prod;
}

/// @nodoc

class _$_Prod implements _Prod {
  _$_Prod();

  @override
  String toString() {
    return 'Environment.prod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Prod);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() local,
    required TResult Function() prod,
    required TResult Function() dev,
  }) {
    return prod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    TResult Function()? dev,
  }) {
    return prod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    TResult Function()? dev,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_Prod value) prod,
    required TResult Function(_Dev value) dev,
  }) {
    return prod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    TResult Function(_Dev value)? dev,
  }) {
    return prod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    TResult Function(_Dev value)? dev,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(this);
    }
    return orElse();
  }
}

abstract class _Prod implements Environment {
  factory _Prod() = _$_Prod;
}

/// @nodoc
abstract class _$$_DevCopyWith<$Res> {
  factory _$$_DevCopyWith(_$_Dev value, $Res Function(_$_Dev) then) =
      __$$_DevCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DevCopyWithImpl<$Res> extends _$EnvironmentCopyWithImpl<$Res>
    implements _$$_DevCopyWith<$Res> {
  __$$_DevCopyWithImpl(_$_Dev _value, $Res Function(_$_Dev) _then)
      : super(_value, (v) => _then(v as _$_Dev));

  @override
  _$_Dev get _value => super._value as _$_Dev;
}

/// @nodoc

class _$_Dev implements _Dev {
  _$_Dev();

  @override
  String toString() {
    return 'Environment.dev()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Dev);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() local,
    required TResult Function() prod,
    required TResult Function() dev,
  }) {
    return dev();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    TResult Function()? dev,
  }) {
    return dev?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? local,
    TResult Function()? prod,
    TResult Function()? dev,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Local value) local,
    required TResult Function(_Prod value) prod,
    required TResult Function(_Dev value) dev,
  }) {
    return dev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    TResult Function(_Dev value)? dev,
  }) {
    return dev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Local value)? local,
    TResult Function(_Prod value)? prod,
    TResult Function(_Dev value)? dev,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev(this);
    }
    return orElse();
  }
}

abstract class _Dev implements Environment {
  factory _Dev() = _$_Dev;
}
