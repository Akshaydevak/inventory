part of 'pricinggrouppost_cubit.dart';

@freezed
class PricinggrouppostState with _$PricinggrouppostState {
  const factory PricinggrouppostState.initial() = _Initial;
  const factory PricinggrouppostState.loading() = _Loading;
  const factory PricinggrouppostState.error() = _Error1;
  const factory PricinggrouppostState.success(DoubleResponse data) = _Success;
}
