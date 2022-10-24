part of 'unicost_costing_cubit.dart';

@freezed
class UnicostCostingState with _$UnicostCostingState {
  const factory UnicostCostingState.initial() = _Initial;
  const factory UnicostCostingState.loading() = _Loading;
  const factory UnicostCostingState.error() = _Error;
  const factory UnicostCostingState.success(double data) = _Success;
}
