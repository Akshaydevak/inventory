part of 'purchasegenerating_cubit.dart';

@freezed
class PurchasegeneratingState with _$PurchasegeneratingState {
  const factory PurchasegeneratingState.initial() = _Initial;
  const factory PurchasegeneratingState.loading() = _Loading;
  const factory PurchasegeneratingState.error() = _Error1;
  const factory PurchasegeneratingState.success(DoubleResponse data) = _Success;
}
