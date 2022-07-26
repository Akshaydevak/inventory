part of 'purchaseorderpost_cubit.dart';

@freezed
class PurchaseorderpostState with _$PurchaseorderpostState {
  const factory PurchaseorderpostState.initial() = _Initial;
  const factory PurchaseorderpostState.loading() = _Loading;
  const factory PurchaseorderpostState.error() = _Error1;
  const factory PurchaseorderpostState.success(DoubleResponse data) = _Success;
}
