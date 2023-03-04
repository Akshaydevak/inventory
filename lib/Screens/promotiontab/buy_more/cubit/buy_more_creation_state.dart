part of 'buy_more_creation_cubit.dart';

@freezed
class BuyMoreCreationState with _$BuyMoreCreationState {
  const factory BuyMoreCreationState.initial() = _Initial;
  const factory BuyMoreCreationState.loading() = _Loading;
  const factory BuyMoreCreationState.error() = _Error1;
  const factory BuyMoreCreationState.success(DoubleResponse data) = _Success;

}
