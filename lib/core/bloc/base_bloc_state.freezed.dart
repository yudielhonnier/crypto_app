// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseBlocState<T, U> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(U? data) init,
    required TResult Function() loading,
    required TResult Function(T data) next,
    required TResult Function(Failure error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(U? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? next,
    TResult? Function(Failure error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(U? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? next,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, U> value) init,
    required TResult Function(_Loading<T, U> value) loading,
    required TResult Function(_Next<T, U> value) next,
    required TResult Function(_Failure<T, U> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, U> value)? init,
    TResult? Function(_Loading<T, U> value)? loading,
    TResult? Function(_Next<T, U> value)? next,
    TResult? Function(_Failure<T, U> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, U> value)? init,
    TResult Function(_Loading<T, U> value)? loading,
    TResult Function(_Next<T, U> value)? next,
    TResult Function(_Failure<T, U> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseBlocStateCopyWith<T, U, $Res> {
  factory $BaseBlocStateCopyWith(
          BaseBlocState<T, U> value, $Res Function(BaseBlocState<T, U>) then) =
      _$BaseBlocStateCopyWithImpl<T, U, $Res, BaseBlocState<T, U>>;
}

/// @nodoc
class _$BaseBlocStateCopyWithImpl<T, U, $Res, $Val extends BaseBlocState<T, U>>
    implements $BaseBlocStateCopyWith<T, U, $Res> {
  _$BaseBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<T, U, $Res> {
  factory _$$_InitCopyWith(
          _$_Init<T, U> value, $Res Function(_$_Init<T, U>) then) =
      __$$_InitCopyWithImpl<T, U, $Res>;
  @useResult
  $Res call({U? data});
}

/// @nodoc
class __$$_InitCopyWithImpl<T, U, $Res>
    extends _$BaseBlocStateCopyWithImpl<T, U, $Res, _$_Init<T, U>>
    implements _$$_InitCopyWith<T, U, $Res> {
  __$$_InitCopyWithImpl(
      _$_Init<T, U> _value, $Res Function(_$_Init<T, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Init<T, U>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as U?,
    ));
  }
}

/// @nodoc

class _$_Init<T, U> implements _Init<T, U> {
  const _$_Init(this.data);

  @override
  final U? data;

  @override
  String toString() {
    return 'BaseBlocState<$T, $U>.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init<T, U> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<T, U, _$_Init<T, U>> get copyWith =>
      __$$_InitCopyWithImpl<T, U, _$_Init<T, U>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(U? data) init,
    required TResult Function() loading,
    required TResult Function(T data) next,
    required TResult Function(Failure error) failure,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(U? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? next,
    TResult? Function(Failure error)? failure,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(U? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? next,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, U> value) init,
    required TResult Function(_Loading<T, U> value) loading,
    required TResult Function(_Next<T, U> value) next,
    required TResult Function(_Failure<T, U> value) failure,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, U> value)? init,
    TResult? Function(_Loading<T, U> value)? loading,
    TResult? Function(_Next<T, U> value)? next,
    TResult? Function(_Failure<T, U> value)? failure,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, U> value)? init,
    TResult Function(_Loading<T, U> value)? loading,
    TResult Function(_Next<T, U> value)? next,
    TResult Function(_Failure<T, U> value)? failure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init<T, U> implements BaseBlocState<T, U> {
  const factory _Init(final U? data) = _$_Init<T, U>;

  U? get data;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<T, U, _$_Init<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, U, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T, U> value, $Res Function(_$_Loading<T, U>) then) =
      __$$_LoadingCopyWithImpl<T, U, $Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, U, $Res>
    extends _$BaseBlocStateCopyWithImpl<T, U, $Res, _$_Loading<T, U>>
    implements _$$_LoadingCopyWith<T, U, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T, U> _value, $Res Function(_$_Loading<T, U>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading<T, U> implements _Loading<T, U> {
  const _$_Loading();

  @override
  String toString() {
    return 'BaseBlocState<$T, $U>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading<T, U>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(U? data) init,
    required TResult Function() loading,
    required TResult Function(T data) next,
    required TResult Function(Failure error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(U? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? next,
    TResult? Function(Failure error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(U? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? next,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, U> value) init,
    required TResult Function(_Loading<T, U> value) loading,
    required TResult Function(_Next<T, U> value) next,
    required TResult Function(_Failure<T, U> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, U> value)? init,
    TResult? Function(_Loading<T, U> value)? loading,
    TResult? Function(_Next<T, U> value)? next,
    TResult? Function(_Failure<T, U> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, U> value)? init,
    TResult Function(_Loading<T, U> value)? loading,
    TResult Function(_Next<T, U> value)? next,
    TResult Function(_Failure<T, U> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T, U> implements BaseBlocState<T, U> {
  const factory _Loading() = _$_Loading<T, U>;
}

/// @nodoc
abstract class _$$_NextCopyWith<T, U, $Res> {
  factory _$$_NextCopyWith(
          _$_Next<T, U> value, $Res Function(_$_Next<T, U>) then) =
      __$$_NextCopyWithImpl<T, U, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_NextCopyWithImpl<T, U, $Res>
    extends _$BaseBlocStateCopyWithImpl<T, U, $Res, _$_Next<T, U>>
    implements _$$_NextCopyWith<T, U, $Res> {
  __$$_NextCopyWithImpl(
      _$_Next<T, U> _value, $Res Function(_$_Next<T, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Next<T, U>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Next<T, U> implements _Next<T, U> {
  const _$_Next(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'BaseBlocState<$T, $U>.next(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Next<T, U> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NextCopyWith<T, U, _$_Next<T, U>> get copyWith =>
      __$$_NextCopyWithImpl<T, U, _$_Next<T, U>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(U? data) init,
    required TResult Function() loading,
    required TResult Function(T data) next,
    required TResult Function(Failure error) failure,
  }) {
    return next(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(U? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? next,
    TResult? Function(Failure error)? failure,
  }) {
    return next?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(U? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? next,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, U> value) init,
    required TResult Function(_Loading<T, U> value) loading,
    required TResult Function(_Next<T, U> value) next,
    required TResult Function(_Failure<T, U> value) failure,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, U> value)? init,
    TResult? Function(_Loading<T, U> value)? loading,
    TResult? Function(_Next<T, U> value)? next,
    TResult? Function(_Failure<T, U> value)? failure,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, U> value)? init,
    TResult Function(_Loading<T, U> value)? loading,
    TResult Function(_Next<T, U> value)? next,
    TResult Function(_Failure<T, U> value)? failure,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _Next<T, U> implements BaseBlocState<T, U> {
  const factory _Next(final T data) = _$_Next<T, U>;

  T get data;
  @JsonKey(ignore: true)
  _$$_NextCopyWith<T, U, _$_Next<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<T, U, $Res> {
  factory _$$_FailureCopyWith(
          _$_Failure<T, U> value, $Res Function(_$_Failure<T, U>) then) =
      __$$_FailureCopyWithImpl<T, U, $Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<T, U, $Res>
    extends _$BaseBlocStateCopyWithImpl<T, U, $Res, _$_Failure<T, U>>
    implements _$$_FailureCopyWith<T, U, $Res> {
  __$$_FailureCopyWithImpl(
      _$_Failure<T, U> _value, $Res Function(_$_Failure<T, U>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Failure<T, U>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Failure<T, U> implements _Failure<T, U> {
  const _$_Failure(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'BaseBlocState<$T, $U>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure<T, U> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<T, U, _$_Failure<T, U>> get copyWith =>
      __$$_FailureCopyWithImpl<T, U, _$_Failure<T, U>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(U? data) init,
    required TResult Function() loading,
    required TResult Function(T data) next,
    required TResult Function(Failure error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(U? data)? init,
    TResult? Function()? loading,
    TResult? Function(T data)? next,
    TResult? Function(Failure error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(U? data)? init,
    TResult Function()? loading,
    TResult Function(T data)? next,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T, U> value) init,
    required TResult Function(_Loading<T, U> value) loading,
    required TResult Function(_Next<T, U> value) next,
    required TResult Function(_Failure<T, U> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T, U> value)? init,
    TResult? Function(_Loading<T, U> value)? loading,
    TResult? Function(_Next<T, U> value)? next,
    TResult? Function(_Failure<T, U> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T, U> value)? init,
    TResult Function(_Loading<T, U> value)? loading,
    TResult Function(_Next<T, U> value)? next,
    TResult Function(_Failure<T, U> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T, U> implements BaseBlocState<T, U> {
  const factory _Failure(final Failure error) = _$_Failure<T, U>;

  Failure get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<T, U, _$_Failure<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}
