part of 'costingtype_cubit.dart';

@freezed
class CostingtypeState with _$CostingtypeState {
  const factory CostingtypeState.initial() = _Initial;
  const factory CostingtypeState.loading() = _Loading;
  const factory CostingtypeState.error() = _Error1;
  const factory CostingtypeState.success(DoubleResponse data) = _Success;
}
