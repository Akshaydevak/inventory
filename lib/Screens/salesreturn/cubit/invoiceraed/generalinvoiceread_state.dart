part of 'generalinvoiceread_cubit.dart';

@freezed
class GeneralinvoicereadState with _$GeneralinvoicereadState {
  const factory GeneralinvoicereadState.initial() = _Initial;
  const factory GeneralinvoicereadState.loading() = _Loading;
  const factory GeneralinvoicereadState.error() = _Error;
  const factory GeneralinvoicereadState.success(
      SalesReturnGeneralInvoiceReadModel data) = _Success;
}
