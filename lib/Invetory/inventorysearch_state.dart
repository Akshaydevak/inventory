part of 'inventorysearch_cubit.dart';

@freezed
class InventorysearchState with _$InventorysearchState {
  const factory InventorysearchState.initial() = _Initial;
  const factory InventorysearchState.success(PaginatedResponse data) = _Success;
  const factory InventorysearchState.error() = _Error;
}
