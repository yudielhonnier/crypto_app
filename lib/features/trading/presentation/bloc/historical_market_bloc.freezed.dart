// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'historical_market_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoricalMarketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketModel ticket) getHistoricalMarket,
    required TResult Function(HistoryInterval interval) changeInterval,
    required TResult Function(String vsCurrency) changeVsCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? getHistoricalMarket,
    TResult? Function(HistoryInterval interval)? changeInterval,
    TResult? Function(String vsCurrency)? changeVsCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? getHistoricalMarket,
    TResult Function(HistoryInterval interval)? changeInterval,
    TResult Function(String vsCurrency)? changeVsCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoricalMarket value) getHistoricalMarket,
    required TResult Function(_ChangeInterval value) changeInterval,
    required TResult Function(_ChangeVsCurrency value) changeVsCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult? Function(_ChangeInterval value)? changeInterval,
    TResult? Function(_ChangeVsCurrency value)? changeVsCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult Function(_ChangeInterval value)? changeInterval,
    TResult Function(_ChangeVsCurrency value)? changeVsCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoricalMarketEventCopyWith<$Res> {
  factory $HistoricalMarketEventCopyWith(HistoricalMarketEvent value,
          $Res Function(HistoricalMarketEvent) then) =
      _$HistoricalMarketEventCopyWithImpl<$Res, HistoricalMarketEvent>;
}

/// @nodoc
class _$HistoricalMarketEventCopyWithImpl<$Res,
        $Val extends HistoricalMarketEvent>
    implements $HistoricalMarketEventCopyWith<$Res> {
  _$HistoricalMarketEventCopyWithImpl(this._value, this._then);

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
  $Res call({TicketModel ticket});
}

/// @nodoc
class __$$_GetHistoricalMarketCopyWithImpl<$Res>
    extends _$HistoricalMarketEventCopyWithImpl<$Res, _$_GetHistoricalMarket>
    implements _$$_GetHistoricalMarketCopyWith<$Res> {
  __$$_GetHistoricalMarketCopyWithImpl(_$_GetHistoricalMarket _value,
      $Res Function(_$_GetHistoricalMarket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = freezed,
  }) {
    return _then(_$_GetHistoricalMarket(
      freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel,
    ));
  }
}

/// @nodoc

class _$_GetHistoricalMarket implements _GetHistoricalMarket {
  const _$_GetHistoricalMarket(this.ticket);

  @override
  final TicketModel ticket;

  @override
  String toString() {
    return 'HistoricalMarketEvent.getHistoricalMarket(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetHistoricalMarket &&
            const DeepCollectionEquality().equals(other.ticket, ticket));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ticket));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetHistoricalMarketCopyWith<_$_GetHistoricalMarket> get copyWith =>
      __$$_GetHistoricalMarketCopyWithImpl<_$_GetHistoricalMarket>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketModel ticket) getHistoricalMarket,
    required TResult Function(HistoryInterval interval) changeInterval,
    required TResult Function(String vsCurrency) changeVsCurrency,
  }) {
    return getHistoricalMarket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? getHistoricalMarket,
    TResult? Function(HistoryInterval interval)? changeInterval,
    TResult? Function(String vsCurrency)? changeVsCurrency,
  }) {
    return getHistoricalMarket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? getHistoricalMarket,
    TResult Function(HistoryInterval interval)? changeInterval,
    TResult Function(String vsCurrency)? changeVsCurrency,
    required TResult orElse(),
  }) {
    if (getHistoricalMarket != null) {
      return getHistoricalMarket(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoricalMarket value) getHistoricalMarket,
    required TResult Function(_ChangeInterval value) changeInterval,
    required TResult Function(_ChangeVsCurrency value) changeVsCurrency,
  }) {
    return getHistoricalMarket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult? Function(_ChangeInterval value)? changeInterval,
    TResult? Function(_ChangeVsCurrency value)? changeVsCurrency,
  }) {
    return getHistoricalMarket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult Function(_ChangeInterval value)? changeInterval,
    TResult Function(_ChangeVsCurrency value)? changeVsCurrency,
    required TResult orElse(),
  }) {
    if (getHistoricalMarket != null) {
      return getHistoricalMarket(this);
    }
    return orElse();
  }
}

abstract class _GetHistoricalMarket implements HistoricalMarketEvent {
  const factory _GetHistoricalMarket(final TicketModel ticket) =
      _$_GetHistoricalMarket;

  TicketModel get ticket;
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
    extends _$HistoricalMarketEventCopyWithImpl<$Res, _$_ChangeInterval>
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
    return 'HistoricalMarketEvent.changeInterval(interval: $interval)';
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
    required TResult Function(TicketModel ticket) getHistoricalMarket,
    required TResult Function(HistoryInterval interval) changeInterval,
    required TResult Function(String vsCurrency) changeVsCurrency,
  }) {
    return changeInterval(interval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? getHistoricalMarket,
    TResult? Function(HistoryInterval interval)? changeInterval,
    TResult? Function(String vsCurrency)? changeVsCurrency,
  }) {
    return changeInterval?.call(interval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? getHistoricalMarket,
    TResult Function(HistoryInterval interval)? changeInterval,
    TResult Function(String vsCurrency)? changeVsCurrency,
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
  }) {
    return changeInterval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult? Function(_ChangeInterval value)? changeInterval,
    TResult? Function(_ChangeVsCurrency value)? changeVsCurrency,
  }) {
    return changeInterval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult Function(_ChangeInterval value)? changeInterval,
    TResult Function(_ChangeVsCurrency value)? changeVsCurrency,
    required TResult orElse(),
  }) {
    if (changeInterval != null) {
      return changeInterval(this);
    }
    return orElse();
  }
}

abstract class _ChangeInterval implements HistoricalMarketEvent {
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
    extends _$HistoricalMarketEventCopyWithImpl<$Res, _$_ChangeVsCurrency>
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
    return 'HistoricalMarketEvent.changeVsCurrency(vsCurrency: $vsCurrency)';
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
    required TResult Function(TicketModel ticket) getHistoricalMarket,
    required TResult Function(HistoryInterval interval) changeInterval,
    required TResult Function(String vsCurrency) changeVsCurrency,
  }) {
    return changeVsCurrency(vsCurrency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? getHistoricalMarket,
    TResult? Function(HistoryInterval interval)? changeInterval,
    TResult? Function(String vsCurrency)? changeVsCurrency,
  }) {
    return changeVsCurrency?.call(vsCurrency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? getHistoricalMarket,
    TResult Function(HistoryInterval interval)? changeInterval,
    TResult Function(String vsCurrency)? changeVsCurrency,
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
  }) {
    return changeVsCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult? Function(_ChangeInterval value)? changeInterval,
    TResult? Function(_ChangeVsCurrency value)? changeVsCurrency,
  }) {
    return changeVsCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoricalMarket value)? getHistoricalMarket,
    TResult Function(_ChangeInterval value)? changeInterval,
    TResult Function(_ChangeVsCurrency value)? changeVsCurrency,
    required TResult orElse(),
  }) {
    if (changeVsCurrency != null) {
      return changeVsCurrency(this);
    }
    return orElse();
  }
}

abstract class _ChangeVsCurrency implements HistoricalMarketEvent {
  const factory _ChangeVsCurrency(final String vsCurrency) =
      _$_ChangeVsCurrency;

  String get vsCurrency;
  @JsonKey(ignore: true)
  _$$_ChangeVsCurrencyCopyWith<_$_ChangeVsCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}
