import 'package:freezed_annotation/freezed_annotation.dart';
part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;
}