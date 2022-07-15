part of 'purchasereturngeneralpatch_cubit.dart';

@freezed
class PurchasereturngeneralpatchState with _$PurchasereturngeneralpatchState {
  const factory PurchasereturngeneralpatchState.initial() = _Initial;
  const factory PurchasereturngeneralpatchState.loading() = _Loading;
  const factory PurchasereturngeneralpatchState.error() = _Error;
  const factory PurchasereturngeneralpatchState.success(DoubleResponse data) =
      _Success;
}
