part of 'purchase_order_type_cubit_dart_cubit.dart';

@freezed
class PurchaseOrderTypeCubitDartState with _$PurchaseOrderTypeCubitDartState {
  const factory PurchaseOrderTypeCubitDartState.initial() = _Initial;
  const factory PurchaseOrderTypeCubitDartState.loading() = _Loading;
  const factory PurchaseOrderTypeCubitDartState.error() = _Error;
  const factory PurchaseOrderTypeCubitDartState.success(
      PurchaseOrdertype data) = _Success;
}
