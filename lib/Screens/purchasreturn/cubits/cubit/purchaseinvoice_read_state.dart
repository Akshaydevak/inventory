part of 'purchaseinvoice_read_cubit.dart';

@freezed
class PurchaseinvoiceReadState with _$PurchaseinvoiceReadState {
  const factory PurchaseinvoiceReadState.initial() = _Initial;
  const factory PurchaseinvoiceReadState.loading() = _Loading;
  const factory PurchaseinvoiceReadState.error() = _Error;
  const factory PurchaseinvoiceReadState.success(
      PurchaseReturnGeneralRead data) = _Success;
}
