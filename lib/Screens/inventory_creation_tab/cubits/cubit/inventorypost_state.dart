part of 'inventorypost_cubit.dart';

@freezed
class InventorypostState with _$InventorypostState {
  const factory InventorypostState.initial() = _Initial;
  const factory InventorypostState.loading() = _Loading;
  const factory InventorypostState.error() = _Error1;
  const factory InventorypostState.success(DoubleResponse data) = _Success;
}
