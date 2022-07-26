part of 'purchaseinvoice_cubit.dart';

@freezed
class PurchaseinvoiceState with _$PurchaseinvoiceState {
  const factory PurchaseinvoiceState.initial() = _Initial;
  const factory PurchaseinvoiceState.loading() = _Loading;
  const factory PurchaseinvoiceState.error() = _Error1;
  const factory PurchaseinvoiceState.success(PurchaseInvoice) = _Success;
}
