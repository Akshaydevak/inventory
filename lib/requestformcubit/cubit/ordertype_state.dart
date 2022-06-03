part of 'ordertype_cubit.dart';

@freezed
class OrdertypeState with _$OrdertypeState {
  const factory OrdertypeState.initial() = _Initial;
  const factory OrdertypeState.loading() = _Loading;
  const factory OrdertypeState.error() = _Error;
  const factory OrdertypeState.success(PurchaseOrdertype data) = _Success;
}
