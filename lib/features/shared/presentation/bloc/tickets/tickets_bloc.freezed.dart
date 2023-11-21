// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsEvent {
  TicketModel get ticket => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketModel ticket) addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? addTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicket value) addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicket value)? addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicket value)? addTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsEventCopyWith<TicketsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
  @useResult
  $Res call({TicketModel ticket});

  $TicketModelCopyWith<$Res> get ticket;
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_value.copyWith(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketModelCopyWith<$Res> get ticket {
    return $TicketModelCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddTicketCopyWith<$Res>
    implements $TicketsEventCopyWith<$Res> {
  factory _$$_AddTicketCopyWith(
          _$_AddTicket value, $Res Function(_$_AddTicket) then) =
      __$$_AddTicketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicketModel ticket});

  @override
  $TicketModelCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$_AddTicketCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_AddTicket>
    implements _$$_AddTicketCopyWith<$Res> {
  __$$_AddTicketCopyWithImpl(
      _$_AddTicket _value, $Res Function(_$_AddTicket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_AddTicket(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel,
    ));
  }
}

/// @nodoc

class _$_AddTicket implements _AddTicket {
  const _$_AddTicket(this.ticket);

  @override
  final TicketModel ticket;

  @override
  String toString() {
    return 'TicketsEvent.addTicket(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTicket &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTicketCopyWith<_$_AddTicket> get copyWith =>
      __$$_AddTicketCopyWithImpl<_$_AddTicket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketModel ticket) addTicket,
  }) {
    return addTicket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? addTicket,
  }) {
    return addTicket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? addTicket,
    required TResult orElse(),
  }) {
    if (addTicket != null) {
      return addTicket(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicket value) addTicket,
  }) {
    return addTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicket value)? addTicket,
  }) {
    return addTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicket value)? addTicket,
    required TResult orElse(),
  }) {
    if (addTicket != null) {
      return addTicket(this);
    }
    return orElse();
  }
}

abstract class _AddTicket implements TicketsEvent {
  const factory _AddTicket(final TicketModel ticket) = _$_AddTicket;

  @override
  TicketModel get ticket;
  @override
  @JsonKey(ignore: true)
  _$$_AddTicketCopyWith<_$_AddTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketsState {
  List<Ticket> get photo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ticket> photo) ticketsLoaded,
    required TResult Function(List<Ticket> photo) ticketAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ticket> photo)? ticketsLoaded,
    TResult? Function(List<Ticket> photo)? ticketAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ticket> photo)? ticketsLoaded,
    TResult Function(List<Ticket> photo)? ticketAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsLoaded value) ticketsLoaded,
    required TResult Function(_TicketAdded value) ticketAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsLoaded value)? ticketsLoaded,
    TResult? Function(_TicketAdded value)? ticketAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsLoaded value)? ticketsLoaded,
    TResult Function(_TicketAdded value)? ticketAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsStateCopyWith<TicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsStateCopyWith<$Res> {
  factory $TicketsStateCopyWith(
          TicketsState value, $Res Function(TicketsState) then) =
      _$TicketsStateCopyWithImpl<$Res, TicketsState>;
  @useResult
  $Res call({List<Ticket> photo});
}

/// @nodoc
class _$TicketsStateCopyWithImpl<$Res, $Val extends TicketsState>
    implements $TicketsStateCopyWith<$Res> {
  _$TicketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketsLoadedCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$_TicketsLoadedCopyWith(
          _$_TicketsLoaded value, $Res Function(_$_TicketsLoaded) then) =
      __$$_TicketsLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ticket> photo});
}

/// @nodoc
class __$$_TicketsLoadedCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_TicketsLoaded>
    implements _$$_TicketsLoadedCopyWith<$Res> {
  __$$_TicketsLoadedCopyWithImpl(
      _$_TicketsLoaded _value, $Res Function(_$_TicketsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$_TicketsLoaded(
      photo: null == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc

class _$_TicketsLoaded implements _TicketsLoaded {
  const _$_TicketsLoaded({required final List<Ticket> photo}) : _photo = photo;

  final List<Ticket> _photo;
  @override
  List<Ticket> get photo {
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photo);
  }

  @override
  String toString() {
    return 'TicketsState.ticketsLoaded(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketsLoaded &&
            const DeepCollectionEquality().equals(other._photo, _photo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketsLoadedCopyWith<_$_TicketsLoaded> get copyWith =>
      __$$_TicketsLoadedCopyWithImpl<_$_TicketsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ticket> photo) ticketsLoaded,
    required TResult Function(List<Ticket> photo) ticketAdded,
  }) {
    return ticketsLoaded(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ticket> photo)? ticketsLoaded,
    TResult? Function(List<Ticket> photo)? ticketAdded,
  }) {
    return ticketsLoaded?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ticket> photo)? ticketsLoaded,
    TResult Function(List<Ticket> photo)? ticketAdded,
    required TResult orElse(),
  }) {
    if (ticketsLoaded != null) {
      return ticketsLoaded(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsLoaded value) ticketsLoaded,
    required TResult Function(_TicketAdded value) ticketAdded,
  }) {
    return ticketsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsLoaded value)? ticketsLoaded,
    TResult? Function(_TicketAdded value)? ticketAdded,
  }) {
    return ticketsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsLoaded value)? ticketsLoaded,
    TResult Function(_TicketAdded value)? ticketAdded,
    required TResult orElse(),
  }) {
    if (ticketsLoaded != null) {
      return ticketsLoaded(this);
    }
    return orElse();
  }
}

abstract class _TicketsLoaded implements TicketsState {
  const factory _TicketsLoaded({required final List<Ticket> photo}) =
      _$_TicketsLoaded;

  @override
  List<Ticket> get photo;
  @override
  @JsonKey(ignore: true)
  _$$_TicketsLoadedCopyWith<_$_TicketsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TicketAddedCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$_TicketAddedCopyWith(
          _$_TicketAdded value, $Res Function(_$_TicketAdded) then) =
      __$$_TicketAddedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ticket> photo});
}

/// @nodoc
class __$$_TicketAddedCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_TicketAdded>
    implements _$$_TicketAddedCopyWith<$Res> {
  __$$_TicketAddedCopyWithImpl(
      _$_TicketAdded _value, $Res Function(_$_TicketAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$_TicketAdded(
      photo: null == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc

class _$_TicketAdded implements _TicketAdded {
  const _$_TicketAdded({required final List<Ticket> photo}) : _photo = photo;

  final List<Ticket> _photo;
  @override
  List<Ticket> get photo {
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photo);
  }

  @override
  String toString() {
    return 'TicketsState.ticketAdded(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketAdded &&
            const DeepCollectionEquality().equals(other._photo, _photo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketAddedCopyWith<_$_TicketAdded> get copyWith =>
      __$$_TicketAddedCopyWithImpl<_$_TicketAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ticket> photo) ticketsLoaded,
    required TResult Function(List<Ticket> photo) ticketAdded,
  }) {
    return ticketAdded(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ticket> photo)? ticketsLoaded,
    TResult? Function(List<Ticket> photo)? ticketAdded,
  }) {
    return ticketAdded?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ticket> photo)? ticketsLoaded,
    TResult Function(List<Ticket> photo)? ticketAdded,
    required TResult orElse(),
  }) {
    if (ticketAdded != null) {
      return ticketAdded(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsLoaded value) ticketsLoaded,
    required TResult Function(_TicketAdded value) ticketAdded,
  }) {
    return ticketAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsLoaded value)? ticketsLoaded,
    TResult? Function(_TicketAdded value)? ticketAdded,
  }) {
    return ticketAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsLoaded value)? ticketsLoaded,
    TResult Function(_TicketAdded value)? ticketAdded,
    required TResult orElse(),
  }) {
    if (ticketAdded != null) {
      return ticketAdded(this);
    }
    return orElse();
  }
}

abstract class _TicketAdded implements TicketsState {
  const factory _TicketAdded({required final List<Ticket> photo}) =
      _$_TicketAdded;

  @override
  List<Ticket> get photo;
  @override
  @JsonKey(ignore: true)
  _$$_TicketAddedCopyWith<_$_TicketAdded> get copyWith =>
      throw _privateConstructorUsedError;
}
