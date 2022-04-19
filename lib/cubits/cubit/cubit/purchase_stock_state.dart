part of 'purchase_stock_cubit.dart';

@freezed
class PurchaseStockState with _$PurchaseStockState {
  const factory PurchaseStockState.initial() = _Initial;
  const factory PurchaseStockState.loading() = _Loading;
  const factory PurchaseStockState.error() = _Error1;
  const factory PurchaseStockState.success(PurchaseCureentStockQty data) =
      _Success;
}
