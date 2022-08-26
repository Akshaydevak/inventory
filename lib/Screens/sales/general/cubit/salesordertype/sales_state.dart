part of 'sales_cubit.dart';

@freezed
class SalesState with _$SalesState {
  const factory SalesState.initial() = _Initial;
  const factory SalesState.loading() = _Loading;
  const factory SalesState.error() = _Error;
  const factory SalesState.success(
      PurchaseOrdertype data) = _Success;

}
