// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateModel<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(T data) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(T data)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(T data)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateModelCopyWith<T, $Res> {
  factory $StateModelCopyWith(
          StateModel<T> value, $Res Function(StateModel<T>) then) =
      _$StateModelCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$StateModelCopyWithImpl<T, $Res>
    implements $StateModelCopyWith<T, $Res> {
  _$StateModelCopyWithImpl(this._value, this._then);

  final StateModel<T> _value;
  // ignore: unused_field
  final $Res Function(StateModel<T>) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<T, $Res> {
  factory _$$InitialCopyWith(
          _$Initial<T> value, $Res Function(_$Initial<T>) then) =
      __$$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<T, $Res> extends _$StateModelCopyWithImpl<T, $Res>
    implements _$$InitialCopyWith<T, $Res> {
  __$$InitialCopyWithImpl(
      _$Initial<T> _value, $Res Function(_$Initial<T>) _then)
      : super(_value, (v) => _then(v as _$Initial<T>));

  @override
  _$Initial<T> get _value => super._value as _$Initial<T>;
}

/// @nodoc

class _$Initial<T> implements Initial<T> {
  _$Initial();

  @override
  String toString() {
    return 'StateModel<$T>()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(T data) data,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(T data)? data,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(T data)? data,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements StateModel<T> {
  factory Initial() = _$Initial<T>;
}

/// @nodoc
abstract class _$$LoadingCopyWith<T, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<T> value, $Res Function(_$Loading<T>) then) =
      __$$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<T, $Res> extends _$StateModelCopyWithImpl<T, $Res>
    implements _$$LoadingCopyWith<T, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<T> _value, $Res Function(_$Loading<T>) _then)
      : super(_value, (v) => _then(v as _$Loading<T>));

  @override
  _$Loading<T> get _value => super._value as _$Loading<T>;
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  _$Loading();

  @override
  String toString() {
    return 'StateModel<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(T data) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(T data)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(T data)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements StateModel<T> {
  factory Loading() = _$Loading<T>;
}

/// @nodoc
abstract class _$$DataCopyWith<T, $Res> {
  factory _$$DataCopyWith(_$Data<T> value, $Res Function(_$Data<T>) then) =
      __$$DataCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$DataCopyWithImpl<T, $Res> extends _$StateModelCopyWithImpl<T, $Res>
    implements _$$DataCopyWith<T, $Res> {
  __$$DataCopyWithImpl(_$Data<T> _value, $Res Function(_$Data<T>) _then)
      : super(_value, (v) => _then(v as _$Data<T>));

  @override
  _$Data<T> get _value => super._value as _$Data<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Data<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Data<T> implements Data<T> {
  _$Data(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'StateModel<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<T, _$Data<T>> get copyWith =>
      __$$DataCopyWithImpl<T, _$Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(T data) data,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(T data)? data,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(T data)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data<T> implements StateModel<T> {
  factory Data(final T data) = _$Data<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DataCopyWith<T, _$Data<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
