// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grafic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GraficEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getHistoricalMarket,
    required TResult Function(HistoryInterval interval) changeInterval,
    required TResult Function(String vsCurrency) changeVsCurrency,
    required TResult Function(String id) getCoinInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getHistoricalMarket,
    TResult? Function(HistoryInterval interval)? changeInterval,
    TResult? Function(String vsCurrency)? changeVsCurrency,
    TResult? Function(String id)? getCoinInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getHistoricalMarket,
    TResult Function(HistoryInterval interval)? changeInterval,
    TResult Function(String vsCurrency)? changeVsCurrency,
    TResult Function(String id)? getCoinInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoricalMarket value) getHistoricalMarket,
    required TResult Function(_ChangeInterval value) changeInterval,
    required TResult Function(_ChangeVsCurrency value) changeVsCurrency,
    required TResult Function(_GetCoinInfo value) getCoinInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult? Function(_ChangeInterval value)? changeInterval,
    TResult? Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult? Function(_GetCoinInfo value)? getCoinInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult Function(_ChangeInterval value)? changeInterval,
    TResult Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult Function(_GetCoinInfo value)? getCoinInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraficEventCopyWith<$Res> {
  factory $GraficEventCopyWith(
          GraficEvent value, $Res Function(GraficEvent) then) =
      _$GraficEventCopyWithImpl<$Res, GraficEvent>;
}

/// @nodoc
class _$GraficEventCopyWithImpl<$Res, $Val extends GraficEvent>
    implements $GraficEventCopyWith<$Res> {
  _$GraficEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetHistoricalMarketCopyWith<$Res> {
  factory _$$_GetHistoricalMarketCopyWith(_$_GetHistoricalMarket value,
          $Res Function(_$_GetHistoricalMarket) then) =
      __$$_GetHistoricalMarketCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GetHistoricalMarketCopyWithImpl<$Res>
    extends _$GraficEventCopyWithImpl<$Res, _$_GetHistoricalMarket>
    implements _$$_GetHistoricalMarketCopyWith<$Res> {
  __$$_GetHistoricalMarketCopyWithImpl(_$_GetHistoricalMarket _value,
      $Res Function(_$_GetHistoricalMarket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetHistoricalMarket(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetHistoricalMarket implements _GetHistoricalMarket {
  const _$_GetHistoricalMarket(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'GraficEvent.getHistoricalMarket(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetHistoricalMarket &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetHistoricalMarketCopyWith<_$_GetHistoricalMarket> get copyWith =>
      __$$_GetHistoricalMarketCopyWithImpl<_$_GetHistoricalMarket>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getHistoricalMarket,
    required TResult Function(HistoryInterval interval) changeInterval,
    required TResult Function(String vsCurrency) changeVsCurrency,
    required TResult Function(String id) getCoinInfo,
  }) {
    return getHistoricalMarket(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getHistoricalMarket,
    TResult? Function(HistoryInterval interval)? changeInterval,
    TResult? Function(String vsCurrency)? changeVsCurrency,
    TResult? Function(String id)? getCoinInfo,
  }) {
    return getHistoricalMarket?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getHistoricalMarket,
    TResult Function(HistoryInterval interval)? changeInterval,
    TResult Function(String vsCurrency)? changeVsCurrency,
    TResult Function(String id)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (getHistoricalMarket != null) {
      return getHistoricalMarket(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoricalMarket value) getHistoricalMarket,
    required TResult Function(_ChangeInterval value) changeInterval,
    required TResult Function(_ChangeVsCurrency value) changeVsCurrency,
    required TResult Function(_GetCoinInfo value) getCoinInfo,
  }) {
    return getHistoricalMarket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult? Function(_ChangeInterval value)? changeInterval,
    TResult? Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult? Function(_GetCoinInfo value)? getCoinInfo,
  }) {
    return getHistoricalMarket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult Function(_ChangeInterval value)? changeInterval,
    TResult Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult Function(_GetCoinInfo value)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (getHistoricalMarket != null) {
      return getHistoricalMarket(this);
    }
    return orElse();
  }
}

abstract class _GetHistoricalMarket implements GraficEvent {
  const factory _GetHistoricalMarket(final String id) = _$_GetHistoricalMarket;

  String get id;
  @JsonKey(ignore: true)
  _$$_GetHistoricalMarketCopyWith<_$_GetHistoricalMarket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeIntervalCopyWith<$Res> {
  factory _$$_ChangeIntervalCopyWith(
          _$_ChangeInterval value, $Res Function(_$_ChangeInterval) then) =
      __$$_ChangeIntervalCopyWithImpl<$Res>;
  @useResult
  $Res call({HistoryInterval interval});
}

/// @nodoc
class __$$_ChangeIntervalCopyWithImpl<$Res>
    extends _$GraficEventCopyWithImpl<$Res, _$_ChangeInterval>
    implements _$$_ChangeIntervalCopyWith<$Res> {
  __$$_ChangeIntervalCopyWithImpl(
      _$_ChangeInterval _value, $Res Function(_$_ChangeInterval) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
  }) {
    return _then(_$_ChangeInterval(
      null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as HistoryInterval,
    ));
  }
}

/// @nodoc

class _$_ChangeInterval implements _ChangeInterval {
  const _$_ChangeInterval(this.interval);

  @override
  final HistoryInterval interval;

  @override
  String toString() {
    return 'GraficEvent.changeInterval(interval: $interval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeInterval &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, interval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeIntervalCopyWith<_$_ChangeInterval> get copyWith =>
      __$$_ChangeIntervalCopyWithImpl<_$_ChangeInterval>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getHistoricalMarket,
    required TResult Function(HistoryInterval interval) changeInterval,
    required TResult Function(String vsCurrency) changeVsCurrency,
    required TResult Function(String id) getCoinInfo,
  }) {
    return changeInterval(interval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getHistoricalMarket,
    TResult? Function(HistoryInterval interval)? changeInterval,
    TResult? Function(String vsCurrency)? changeVsCurrency,
    TResult? Function(String id)? getCoinInfo,
  }) {
    return changeInterval?.call(interval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getHistoricalMarket,
    TResult Function(HistoryInterval interval)? changeInterval,
    TResult Function(String vsCurrency)? changeVsCurrency,
    TResult Function(String id)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (changeInterval != null) {
      return changeInterval(interval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoricalMarket value) getHistoricalMarket,
    required TResult Function(_ChangeInterval value) changeInterval,
    required TResult Function(_ChangeVsCurrency value) changeVsCurrency,
    required TResult Function(_GetCoinInfo value) getCoinInfo,
  }) {
    return changeInterval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult? Function(_ChangeInterval value)? changeInterval,
    TResult? Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult? Function(_GetCoinInfo value)? getCoinInfo,
  }) {
    return changeInterval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult Function(_ChangeInterval value)? changeInterval,
    TResult Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult Function(_GetCoinInfo value)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (changeInterval != null) {
      return changeInterval(this);
    }
    return orElse();
  }
}

abstract class _ChangeInterval implements GraficEvent {
  const factory _ChangeInterval(final HistoryInterval interval) =
      _$_ChangeInterval;

  HistoryInterval get interval;
  @JsonKey(ignore: true)
  _$$_ChangeIntervalCopyWith<_$_ChangeInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeVsCurrencyCopyWith<$Res> {
  factory _$$_ChangeVsCurrencyCopyWith(
          _$_ChangeVsCurrency value, $Res Function(_$_ChangeVsCurrency) then) =
      __$$_ChangeVsCurrencyCopyWithImpl<$Res>;
  @useResult
  $Res call({String vsCurrency});
}

/// @nodoc
class __$$_ChangeVsCurrencyCopyWithImpl<$Res>
    extends _$GraficEventCopyWithImpl<$Res, _$_ChangeVsCurrency>
    implements _$$_ChangeVsCurrencyCopyWith<$Res> {
  __$$_ChangeVsCurrencyCopyWithImpl(
      _$_ChangeVsCurrency _value, $Res Function(_$_ChangeVsCurrency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vsCurrency = null,
  }) {
    return _then(_$_ChangeVsCurrency(
      null == vsCurrency
          ? _value.vsCurrency
          : vsCurrency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeVsCurrency implements _ChangeVsCurrency {
  const _$_ChangeVsCurrency(this.vsCurrency);

  @override
  final String vsCurrency;

  @override
  String toString() {
    return 'GraficEvent.changeVsCurrency(vsCurrency: $vsCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeVsCurrency &&
            (identical(other.vsCurrency, vsCurrency) ||
                other.vsCurrency == vsCurrency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vsCurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeVsCurrencyCopyWith<_$_ChangeVsCurrency> get copyWith =>
      __$$_ChangeVsCurrencyCopyWithImpl<_$_ChangeVsCurrency>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getHistoricalMarket,
    required TResult Function(HistoryInterval interval) changeInterval,
    required TResult Function(String vsCurrency) changeVsCurrency,
    required TResult Function(String id) getCoinInfo,
  }) {
    return changeVsCurrency(vsCurrency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getHistoricalMarket,
    TResult? Function(HistoryInterval interval)? changeInterval,
    TResult? Function(String vsCurrency)? changeVsCurrency,
    TResult? Function(String id)? getCoinInfo,
  }) {
    return changeVsCurrency?.call(vsCurrency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getHistoricalMarket,
    TResult Function(HistoryInterval interval)? changeInterval,
    TResult Function(String vsCurrency)? changeVsCurrency,
    TResult Function(String id)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (changeVsCurrency != null) {
      return changeVsCurrency(vsCurrency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoricalMarket value) getHistoricalMarket,
    required TResult Function(_ChangeInterval value) changeInterval,
    required TResult Function(_ChangeVsCurrency value) changeVsCurrency,
    required TResult Function(_GetCoinInfo value) getCoinInfo,
  }) {
    return changeVsCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult? Function(_ChangeInterval value)? changeInterval,
    TResult? Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult? Function(_GetCoinInfo value)? getCoinInfo,
  }) {
    return changeVsCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult Function(_ChangeInterval value)? changeInterval,
    TResult Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult Function(_GetCoinInfo value)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (changeVsCurrency != null) {
      return changeVsCurrency(this);
    }
    return orElse();
  }
}

abstract class _ChangeVsCurrency implements GraficEvent {
  const factory _ChangeVsCurrency(final String vsCurrency) =
      _$_ChangeVsCurrency;

  String get vsCurrency;
  @JsonKey(ignore: true)
  _$$_ChangeVsCurrencyCopyWith<_$_ChangeVsCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCoinInfoCopyWith<$Res> {
  factory _$$_GetCoinInfoCopyWith(
          _$_GetCoinInfo value, $Res Function(_$_GetCoinInfo) then) =
      __$$_GetCoinInfoCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GetCoinInfoCopyWithImpl<$Res>
    extends _$GraficEventCopyWithImpl<$Res, _$_GetCoinInfo>
    implements _$$_GetCoinInfoCopyWith<$Res> {
  __$$_GetCoinInfoCopyWithImpl(
      _$_GetCoinInfo _value, $Res Function(_$_GetCoinInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetCoinInfo(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCoinInfo implements _GetCoinInfo {
  const _$_GetCoinInfo(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'GraficEvent.getCoinInfo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCoinInfo &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCoinInfoCopyWith<_$_GetCoinInfo> get copyWith =>
      __$$_GetCoinInfoCopyWithImpl<_$_GetCoinInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getHistoricalMarket,
    required TResult Function(HistoryInterval interval) changeInterval,
    required TResult Function(String vsCurrency) changeVsCurrency,
    required TResult Function(String id) getCoinInfo,
  }) {
    return getCoinInfo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getHistoricalMarket,
    TResult? Function(HistoryInterval interval)? changeInterval,
    TResult? Function(String vsCurrency)? changeVsCurrency,
    TResult? Function(String id)? getCoinInfo,
  }) {
    return getCoinInfo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getHistoricalMarket,
    TResult Function(HistoryInterval interval)? changeInterval,
    TResult Function(String vsCurrency)? changeVsCurrency,
    TResult Function(String id)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (getCoinInfo != null) {
      return getCoinInfo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoricalMarket value) getHistoricalMarket,
    required TResult Function(_ChangeInterval value) changeInterval,
    required TResult Function(_ChangeVsCurrency value) changeVsCurrency,
    required TResult Function(_GetCoinInfo value) getCoinInfo,
  }) {
    return getCoinInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult? Function(_ChangeInterval value)? changeInterval,
    TResult? Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult? Function(_GetCoinInfo value)? getCoinInfo,
  }) {
    return getCoinInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult Function(_ChangeInterval value)? changeInterval,
    TResult Function(_ChangeVsCurrency value)? changeVsCurrency,
    TResult Function(_GetCoinInfo value)? getCoinInfo,
    required TResult orElse(),
  }) {
    if (getCoinInfo != null) {
      return getCoinInfo(this);
    }
    return orElse();
  }
}

abstract class _GetCoinInfo implements GraficEvent {
  const factory _GetCoinInfo(final String id) = _$_GetCoinInfo;

  String get id;
  @JsonKey(ignore: true)
  _$$_GetCoinInfoCopyWith<_$_GetCoinInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
