import 'package:crypto_app/core/error/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_bloc_state.freezed.dart';

@freezed
class BaseBlocState<T, U> with _$BaseBlocState<T, U> {
  const factory BaseBlocState.init(U? data) = _Init<T, U>;
  const factory BaseBlocState.loading() = _Loading;
  const factory BaseBlocState.next(T data) = _Next<T, U>;
  const factory BaseBlocState.failure(Failure error) = _Failure;
}
