part of 'deletioncosting_cubit.dart';

@freezed
class DeletioncostingState with _$DeletioncostingState {
  const factory DeletioncostingState.initial() = _Initial;
  const factory DeletioncostingState.loading() = _Loading;
  const factory DeletioncostingState.error() = _Error;
  const factory DeletioncostingState.success(DoubleResponse data) = _Success;
}
