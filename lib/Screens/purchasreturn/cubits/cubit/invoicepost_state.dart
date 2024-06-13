part of 'invoicepost_cubit.dart';

@freezed
class InvoicepostPurchaseCubitState with _$InvoicepostPurchaseCubitState {
  const factory InvoicepostPurchaseCubitState.initial() = _Initial;
  const factory InvoicepostPurchaseCubitState.loading() = _Loading;
  const factory InvoicepostPurchaseCubitState.error() = _Error1;
  const factory InvoicepostPurchaseCubitState.success(DoubleResponse data) = _Success;
}
