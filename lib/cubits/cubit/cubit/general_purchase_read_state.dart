part of 'general_purchase_read_cubit.dart';

@freezed
class GeneralPurchaseReadState with _$GeneralPurchaseReadState {
  const factory GeneralPurchaseReadState.initial() = _Initial;
  const factory GeneralPurchaseReadState.loading() = _Loading;
  const factory GeneralPurchaseReadState.error() = _Error;
  const factory GeneralPurchaseReadState.success(PurchaseOrderRead data) =
      _Success;
}
