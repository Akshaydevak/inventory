part of 'purchase_order_patch_cubit.dart';

@freezed
class PurchaseOrderPatchState with _$PurchaseOrderPatchState {
  const factory PurchaseOrderPatchState.initial() = _Initial;
  const factory PurchaseOrderPatchState.loading() = _Loading;
  const factory PurchaseOrderPatchState.error() = _Error;
  const factory PurchaseOrderPatchState.success(DoubleResponse data) = _Success;
}
