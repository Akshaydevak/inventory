part of 'salesinvoicecode_cubit.dart';

@freezed
class SalesinvoicecodeState with _$SalesinvoicecodeState {
  const factory SalesinvoicecodeState.initial() = _Initial;
  const factory SalesinvoicecodeState.loading() = _Loading;
  const factory SalesinvoicecodeState.error() = _Error1;
  const factory SalesinvoicecodeState.success(
      List<SalesInvoiceCodeModel> data) = _Success;
}
