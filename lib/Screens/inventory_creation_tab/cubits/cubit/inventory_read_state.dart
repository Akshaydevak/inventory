part of 'inventory_read_cubit.dart';

@freezed
class InventoryReadState with _$InventoryReadState {
  const factory InventoryReadState.initial() = _Initial;
  const factory InventoryReadState.loading() = _Loading;
  const factory InventoryReadState.error() = _Error;
  const factory InventoryReadState.success(InventoryRead data) = _Success;
}
