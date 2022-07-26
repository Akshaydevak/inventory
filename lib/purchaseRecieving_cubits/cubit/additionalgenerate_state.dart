part of 'additionalgenerate_cubit.dart';

@freezed
class AdditionalgenerateState with _$AdditionalgenerateState {
  const factory AdditionalgenerateState.initial() = _Initial;

  const factory AdditionalgenerateState.loading() = _Loading;
  const factory AdditionalgenerateState.error() = _Error1;
  const factory AdditionalgenerateState.success(DoubleResponse data) = _Success;
}
