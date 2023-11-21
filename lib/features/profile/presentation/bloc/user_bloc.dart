import 'package:crypto_app/core/bloc/base_bloc.dart';
import 'package:crypto_app/core/bloc/base_bloc_event.dart';
import 'package:crypto_app/core/bloc/base_bloc_state.dart';
import 'package:crypto_app/core/resources/no_params.dart';
import 'package:crypto_app/features/profile/data/models/user_model.dart';
import 'package:crypto_app/features/profile/domain/usecase/pick_image_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends BaseBloc<UserEvent, UserState, UserModel> {
  final PickImageUseCase _pickImageUseCase;
  UserBloc(this._pickImageUseCase)
      : super(const BaseBlocState.init(UserModel.mockUserModel)) {
    on<_PickImage>(onPickImage);
  }

  void onPickImage(UserEvent event,
      Emitter<BaseBlocState<UserState, UserModel>> emit) async {
    emit(const BaseBlocState.loading());
    final response = await _pickImageUseCase(const NoParams());

    response.fold((l) => emit(BaseBlocState.failure(l)), (r) {
      //todo:cache image

      //emit values
      r.path.isEmpty
          ? emit(const BaseBlocState.init(UserModel.mockUserModel))
          : emit(BaseBlocState.next(_PhotoLoaded(photo: r)));
    });
  }
}
