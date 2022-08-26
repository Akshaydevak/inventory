part of 'salesreturninvoiceread_cubit.dart';

@freezed
class SalesreturninvoicereadState with _$SalesreturninvoicereadState {
  const factory SalesreturninvoicereadState.initial() = _Initial;
  const factory SalesreturninvoicereadState.loading() = _Loading;
  const factory SalesreturninvoicereadState.error() = _Error;
  const factory SalesreturninvoicereadState.success(
      SalesReturnInvoiceReadModel2 data) = _Success;
}
