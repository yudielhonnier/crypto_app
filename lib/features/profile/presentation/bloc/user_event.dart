part of 'user_bloc.dart';

@freezed
class UserEvent extends BaseBlocEvent with _$UserEvent {
  const factory UserEvent.pickImage() = _PickImage;
}
