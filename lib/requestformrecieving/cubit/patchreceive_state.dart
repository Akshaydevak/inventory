part of 'patchreceive_cubit.dart';

@freezed
class PatchreceiveState with _$PatchreceiveState {
  const factory PatchreceiveState.initial() = _Initial;
  const factory PatchreceiveState.loading() = _Loading;
  const factory PatchreceiveState.error() = _Error;
  const factory PatchreceiveState.success(DoubleResponse data) = _Success;
}
