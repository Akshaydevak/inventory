part of 'purchaserecievingpatch_cubit.dart';

@freezed
class PurchaserecievingpatchState with _$PurchaserecievingpatchState {
  const factory PurchaserecievingpatchState.initial() = _Initial;
  const factory PurchaserecievingpatchState.loading() = _Loading;
  const factory PurchaserecievingpatchState.error() = _Error;
  const factory PurchaserecievingpatchState.success(DoubleResponse data) = _Success;
}
