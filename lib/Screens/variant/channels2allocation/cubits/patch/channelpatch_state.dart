part of 'channelpatch_cubit.dart';

@freezed
class ChannelpatchState with _$ChannelpatchState {
  const factory ChannelpatchState.initial() = _Initial;
  const factory ChannelpatchState.loading() = _Loading;
  const factory ChannelpatchState.error() = _Error;
  const factory ChannelpatchState.success(DoubleResponse data) = _Success;
}
