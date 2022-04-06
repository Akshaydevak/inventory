part of 'purchase_order_type_cubit.dart';

@freezed
class PurchaseOrderTypeState with _$PurchaseOrderTypeState {
  const factory PurchaseOrderTypeState.initial() = _Initial;
  const factory PurchaseOrderTypeState.loading() = _Loading;
  const factory PurchaseOrderTypeState.error() = _Error;
  const factory PurchaseOrderTypeState.success(PurchaseOrdertype? data) = _Success;
}
