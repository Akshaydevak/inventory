part of 'invoiceread_cubit.dart';

@freezed
class InvoicereadState with _$InvoicereadState {
  const factory InvoicereadState.initial() = _Initial;
  const factory InvoicereadState.loading() = _Loading;
  const factory InvoicereadState.error() = _Error;
  const factory InvoicereadState.success(SalesReturnInvoiceReadModel data) =
      _Success;
}
