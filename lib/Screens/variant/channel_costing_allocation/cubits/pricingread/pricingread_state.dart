part of 'pricingread_cubit.dart';

@freezed
class PricingreadState with _$PricingreadState {
  const factory PricingreadState.initial() = _Initial;
  const factory PricingreadState.loading() = _Loading;
  const factory PricingreadState.error() = _Error;
  const factory PricingreadState.success(PricingTypeListModel data) = _Success;
}
