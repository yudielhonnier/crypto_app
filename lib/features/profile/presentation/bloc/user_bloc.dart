import 'package:crypto_app/core/bloc/base_bloc.dart';
import 'package:crypto_app/core/bloc/base_bloc_event.dart';
import 'package:crypto_app/core/bloc/base_bloc_state.dart';
import 'package:crypto_app/core/resources/no_params.dart';
import 'package:crypto_app/features/profile/data/models/user_model.dart';
import 'package:crypto_app/features/profile/domain/usecase/pick_image_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends BaseBloc<UserEvent, UserState, UserModel> {
  UserModel userInitial =
      const UserModel(uid: "1", username: "username", imageUrl: "");
  final PickImageUseCase _pickImageUseCase;
  UserBloc(this.userInitial, this._pickImageUseCase)
      : super(BaseBlocState.init(userInitial)) {
    on<_PickImage>(onPickImage);
  }

  void onPickImage(UserEvent event, Emitter<BaseBlocState> emit) async {
    emit(const BaseBlocState.loading());
    final response = await _pickImageUseCase(const NoParams());

    response.fold(
        (l) => emit(BaseBlocState.failure(l)),
        (r) => r.path.isEmpty
            ? emit(BaseBlocState.init(userInitial))
            : emit(BaseBlocState.next(r)));
  }
}

//todo:check this variant
// class UserBloc extends BaseBloc<UserEvent, UserState, UserModel> {
//   UserModel userInitial =
//       const UserModel(uid: "1", username: "username", imageUrl: "");
//   UserBloc(this.userInitial) : super(BaseBlocState.init(userInitial)) {
//     on<UserEvent>((event, emit) {});
//   }
// }
