import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_shadow_state.dart';
part 'app_shadow_cubit.freezed.dart';

class AppShadowCubit extends Cubit<AppShadowState> {
  AppShadowCubit() : super(const AppShadowState.show());

  bool _show = true;

  bool get show => _show;

  void toggleShow() {
    print('DEBBUG: _show - $_show ');

    _show = !_show;
    if (_show) {
      emit(const AppShadowState.show());
    } else {
      emit(const AppShadowState.hide());
    }
  }

  void showShadow() {
    print('DEBBUG:  _show - $_show ');

    _show = true;
    emit(const AppShadowState.show());
  }

  void hideShadow() {
    print('DEBBUG: _hide - $_show ');

    _show = false;
    emit(const AppShadowState.hide());
  }
}
