import 'package:crypto_app/core/bloc/base_bloc_event.dart';
import 'package:crypto_app/core/bloc/base_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E, S, U>
    extends Bloc<BaseBlocEvent, BaseBlocState<S, U>> {
  BaseBloc(super.initialState);
}
