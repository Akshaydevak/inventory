part of 'purchaseorderdelete_cubit.dart';

@freezed
class PurchaseorderdeleteState with _$PurchaseorderdeleteState {
  const factory PurchaseorderdeleteState.initial() = _Initial;
  const factory PurchaseorderdeleteState.loading() = _Loading;
  const factory PurchaseorderdeleteState.error() = _Error;
  const factory PurchaseorderdeleteState.success(DoubleResponse data) =
      _Success;
}
