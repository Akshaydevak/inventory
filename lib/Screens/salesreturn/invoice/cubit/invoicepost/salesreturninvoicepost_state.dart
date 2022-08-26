part of 'salesreturninvoicepost_cubit.dart';

@freezed
class SalesreturninvoicepostState with _$SalesreturninvoicepostState {
  const factory SalesreturninvoicepostState.initial() = _Initial;
  const factory SalesreturninvoicepostState.loading() = _Loading;
  const factory SalesreturninvoicepostState.error() = _Error1;
  const factory SalesreturninvoicepostState.success(DoubleResponse data) =
      _Success;
}
