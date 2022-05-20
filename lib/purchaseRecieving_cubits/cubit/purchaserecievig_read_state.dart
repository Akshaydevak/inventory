part of 'purchaserecievig_read_cubit.dart';

@freezed
class PurchaserecievigReadState with _$PurchaserecievigReadState {
  const factory PurchaserecievigReadState.initial() = _Initial;
  const factory PurchaserecievigReadState.loading() = _Loading;
  const factory PurchaserecievigReadState.error() = _Error;
  const factory PurchaserecievigReadState.success(PurchaseRecievingRead data) =
      _Success;
}
