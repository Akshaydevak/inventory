part of 'deleterequestform_cubit.dart';

@freezed
class DeleterequestformState with _$DeleterequestformState {
  const factory DeleterequestformState.initial() = _Initial;
  const factory DeleterequestformState.loading() = _Loading;
  const factory DeleterequestformState.error() = _Error;
  const factory DeleterequestformState.success(DoubleResponse data) = _Success;
}
