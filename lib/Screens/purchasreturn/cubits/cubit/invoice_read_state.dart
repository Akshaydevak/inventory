part of 'invoice_read_cubit.dart';

@freezed
class InvoiceReadState with _$InvoiceReadState {
  const factory InvoiceReadState.initial() = _Initial;
  const factory InvoiceReadState.loading() = _Loading;
  const factory InvoiceReadState.error() = _Error;
  const factory InvoiceReadState.success(PurchaseInvoiceReadModel data) =
      _Success;
}
