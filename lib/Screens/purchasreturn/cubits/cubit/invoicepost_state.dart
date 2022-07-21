part of 'invoicepost_cubit.dart';

@freezed
class InvoicepostState with _$InvoicepostState {
  const factory InvoicepostState.initial() = _Initial;
  const factory InvoicepostState.loading() = _Loading;
  const factory InvoicepostState.error() = _Error1;
  const factory InvoicepostState.success(DoubleResponse data) = _Success;
}
