part of 'requestpatch_cubit.dart';

@freezed
class RequestpatchState with _$RequestpatchState {
  const factory RequestpatchState.initial() = _Initial;
  const factory RequestpatchState.loading() = _Loading;
  const factory RequestpatchState.error() = _Error;
  const factory RequestpatchState.success(DoubleResponse data) = _Success;
}
