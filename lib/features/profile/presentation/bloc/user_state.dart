part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  // const factory UserState.userInitial(
  //     {@Default("username") username,
  //     @Default("") imageUrl,
  //     @Default("1") uid}) = _UserInitial;
  const factory UserState.photoLoaded({required String photo}) = _PhotoLoaded;
}
