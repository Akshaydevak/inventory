part of 'costing_creation_cubit.dart';

@freezed
class CostingCreationState with _$CostingCreationState {
  const factory CostingCreationState.initial() = _Initial;
  const factory CostingCreationState.loading() = _Loading;
  const factory CostingCreationState.error() = _Error1;
  const factory CostingCreationState.success(DoubleResponse data) = _Success;
}
