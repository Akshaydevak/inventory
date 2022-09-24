part of 'pricinggrouppatch_cubit.dart';

@freezed
class PricinggrouppatchState with _$PricinggrouppatchState {
  const factory PricinggrouppatchState.initial() = _Initial;
  const factory PricinggrouppatchState.loading() = _Loading;
  const factory PricinggrouppatchState.error() = _Error1;
  const factory PricinggrouppatchState.success(DoubleResponse data) = _Success;
}
