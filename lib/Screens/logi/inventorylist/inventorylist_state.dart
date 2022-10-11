part of 'inventorylist_cubit.dart';

@freezed
class InventorylistState with _$InventorylistState {
  const factory InventorylistState.initial() = _Initial;
  const factory InventorylistState.loading() = _Loading;
  const factory InventorylistState.success(PaginatedResponse data) = _Success;
  const factory InventorylistState.error() = _Error;
}
