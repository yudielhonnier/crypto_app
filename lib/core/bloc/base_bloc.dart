import 'package:crypto_app/core/bloc/base_bloc_event.dart';
import 'package:crypto_app/core/bloc/base_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/base_state/base_bloc_state.dart';

abstract class BaseBloc<E, S> extends Bloc<BaseBlocEvent<E>, BaseBlocState<S>> {
  BaseBloc(super.initialState);
}
