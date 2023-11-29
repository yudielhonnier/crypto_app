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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketModel ticket) addTicket,
    required TResult Function(TicketModel ticket) deleteTicket,
    required TResult Function() getAllTickets,
    required TResult Function() toastReaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? addTicket,
    TResult? Function(TicketModel ticket)? deleteTicket,
    TResult? Function()? getAllTickets,
    TResult? Function()? toastReaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? addTicket,
    TResult Function(TicketModel ticket)? deleteTicket,
    TResult Function()? getAllTickets,
    TResult Function()? toastReaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicket value) addTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
    required TResult Function(_GetAllTickets value) getAllTickets,
    required TResult Function(_ToastReaded value) toastReaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicket value)? addTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
    TResult? Function(_GetAllTickets value)? getAllTickets,
    TResult? Function(_ToastReaded value)? toastReaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicket value)? addTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    TResult Function(_GetAllTickets value)? getAllTickets,
    TResult Function(_ToastReaded value)? toastReaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddTicketCopyWith<$Res> {
  factory _$$_AddTicketCopyWith(
          _$_AddTicket value, $Res Function(_$_AddTicket) then) =
      __$$_AddTicketCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketModel ticket});

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

  @override
  @pragma('vm:prefer-inline')
  $TicketModelCopyWith<$Res> get ticket {
    return $TicketModelCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value));
    });
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
    required TResult Function(TicketModel ticket) deleteTicket,
    required TResult Function() getAllTickets,
    required TResult Function() toastReaded,
  }) {
    return addTicket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? addTicket,
    TResult? Function(TicketModel ticket)? deleteTicket,
    TResult? Function()? getAllTickets,
    TResult? Function()? toastReaded,
  }) {
    return addTicket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? addTicket,
    TResult Function(TicketModel ticket)? deleteTicket,
    TResult Function()? getAllTickets,
    TResult Function()? toastReaded,
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
    required TResult Function(_DeleteTicket value) deleteTicket,
    required TResult Function(_GetAllTickets value) getAllTickets,
    required TResult Function(_ToastReaded value) toastReaded,
  }) {
    return addTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicket value)? addTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
    TResult? Function(_GetAllTickets value)? getAllTickets,
    TResult? Function(_ToastReaded value)? toastReaded,
  }) {
    return addTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicket value)? addTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    TResult Function(_GetAllTickets value)? getAllTickets,
    TResult Function(_ToastReaded value)? toastReaded,
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

  TicketModel get ticket;
  @JsonKey(ignore: true)
  _$$_AddTicketCopyWith<_$_AddTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteTicketCopyWith<$Res> {
  factory _$$_DeleteTicketCopyWith(
          _$_DeleteTicket value, $Res Function(_$_DeleteTicket) then) =
      __$$_DeleteTicketCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketModel ticket});

  $TicketModelCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$_DeleteTicketCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_DeleteTicket>
    implements _$$_DeleteTicketCopyWith<$Res> {
  __$$_DeleteTicketCopyWithImpl(
      _$_DeleteTicket _value, $Res Function(_$_DeleteTicket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_DeleteTicket(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketModelCopyWith<$Res> get ticket {
    return $TicketModelCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value));
    });
  }
}

/// @nodoc

class _$_DeleteTicket implements _DeleteTicket {
  const _$_DeleteTicket(this.ticket);

  @override
  final TicketModel ticket;

  @override
  String toString() {
    return 'TicketsEvent.deleteTicket(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTicket &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTicketCopyWith<_$_DeleteTicket> get copyWith =>
      __$$_DeleteTicketCopyWithImpl<_$_DeleteTicket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketModel ticket) addTicket,
    required TResult Function(TicketModel ticket) deleteTicket,
    required TResult Function() getAllTickets,
    required TResult Function() toastReaded,
  }) {
    return deleteTicket(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? addTicket,
    TResult? Function(TicketModel ticket)? deleteTicket,
    TResult? Function()? getAllTickets,
    TResult? Function()? toastReaded,
  }) {
    return deleteTicket?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? addTicket,
    TResult Function(TicketModel ticket)? deleteTicket,
    TResult Function()? getAllTickets,
    TResult Function()? toastReaded,
    required TResult orElse(),
  }) {
    if (deleteTicket != null) {
      return deleteTicket(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicket value) addTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
    required TResult Function(_GetAllTickets value) getAllTickets,
    required TResult Function(_ToastReaded value) toastReaded,
  }) {
    return deleteTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicket value)? addTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
    TResult? Function(_GetAllTickets value)? getAllTickets,
    TResult? Function(_ToastReaded value)? toastReaded,
  }) {
    return deleteTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicket value)? addTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    TResult Function(_GetAllTickets value)? getAllTickets,
    TResult Function(_ToastReaded value)? toastReaded,
    required TResult orElse(),
  }) {
    if (deleteTicket != null) {
      return deleteTicket(this);
    }
    return orElse();
  }
}

abstract class _DeleteTicket implements TicketsEvent {
  const factory _DeleteTicket(final TicketModel ticket) = _$_DeleteTicket;

  TicketModel get ticket;
  @JsonKey(ignore: true)
  _$$_DeleteTicketCopyWith<_$_DeleteTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllTicketsCopyWith<$Res> {
  factory _$$_GetAllTicketsCopyWith(
          _$_GetAllTickets value, $Res Function(_$_GetAllTickets) then) =
      __$$_GetAllTicketsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllTicketsCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_GetAllTickets>
    implements _$$_GetAllTicketsCopyWith<$Res> {
  __$$_GetAllTicketsCopyWithImpl(
      _$_GetAllTickets _value, $Res Function(_$_GetAllTickets) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllTickets implements _GetAllTickets {
  const _$_GetAllTickets();

  @override
  String toString() {
    return 'TicketsEvent.getAllTickets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllTickets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketModel ticket) addTicket,
    required TResult Function(TicketModel ticket) deleteTicket,
    required TResult Function() getAllTickets,
    required TResult Function() toastReaded,
  }) {
    return getAllTickets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? addTicket,
    TResult? Function(TicketModel ticket)? deleteTicket,
    TResult? Function()? getAllTickets,
    TResult? Function()? toastReaded,
  }) {
    return getAllTickets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? addTicket,
    TResult Function(TicketModel ticket)? deleteTicket,
    TResult Function()? getAllTickets,
    TResult Function()? toastReaded,
    required TResult orElse(),
  }) {
    if (getAllTickets != null) {
      return getAllTickets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicket value) addTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
    required TResult Function(_GetAllTickets value) getAllTickets,
    required TResult Function(_ToastReaded value) toastReaded,
  }) {
    return getAllTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicket value)? addTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
    TResult? Function(_GetAllTickets value)? getAllTickets,
    TResult? Function(_ToastReaded value)? toastReaded,
  }) {
    return getAllTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicket value)? addTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    TResult Function(_GetAllTickets value)? getAllTickets,
    TResult Function(_ToastReaded value)? toastReaded,
    required TResult orElse(),
  }) {
    if (getAllTickets != null) {
      return getAllTickets(this);
    }
    return orElse();
  }
}

abstract class _GetAllTickets implements TicketsEvent {
  const factory _GetAllTickets() = _$_GetAllTickets;
}

/// @nodoc
abstract class _$$_ToastReadedCopyWith<$Res> {
  factory _$$_ToastReadedCopyWith(
          _$_ToastReaded value, $Res Function(_$_ToastReaded) then) =
      __$$_ToastReadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToastReadedCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_ToastReaded>
    implements _$$_ToastReadedCopyWith<$Res> {
  __$$_ToastReadedCopyWithImpl(
      _$_ToastReaded _value, $Res Function(_$_ToastReaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToastReaded implements _ToastReaded {
  const _$_ToastReaded();

  @override
  String toString() {
    return 'TicketsEvent.toastReaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToastReaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketModel ticket) addTicket,
    required TResult Function(TicketModel ticket) deleteTicket,
    required TResult Function() getAllTickets,
    required TResult Function() toastReaded,
  }) {
    return toastReaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketModel ticket)? addTicket,
    TResult? Function(TicketModel ticket)? deleteTicket,
    TResult? Function()? getAllTickets,
    TResult? Function()? toastReaded,
  }) {
    return toastReaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketModel ticket)? addTicket,
    TResult Function(TicketModel ticket)? deleteTicket,
    TResult Function()? getAllTickets,
    TResult Function()? toastReaded,
    required TResult orElse(),
  }) {
    if (toastReaded != null) {
      return toastReaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTicket value) addTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
    required TResult Function(_GetAllTickets value) getAllTickets,
    required TResult Function(_ToastReaded value) toastReaded,
  }) {
    return toastReaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTicket value)? addTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
    TResult? Function(_GetAllTickets value)? getAllTickets,
    TResult? Function(_ToastReaded value)? toastReaded,
  }) {
    return toastReaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTicket value)? addTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    TResult Function(_GetAllTickets value)? getAllTickets,
    TResult Function(_ToastReaded value)? toastReaded,
    required TResult orElse(),
  }) {
    if (toastReaded != null) {
      return toastReaded(this);
    }
    return orElse();
  }
}

abstract class _ToastReaded implements TicketsEvent {
  const factory _ToastReaded() = _$_ToastReaded;
}
