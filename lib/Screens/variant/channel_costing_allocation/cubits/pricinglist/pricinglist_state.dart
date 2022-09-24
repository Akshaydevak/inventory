part of 'pricinglist_cubit.dart';

@freezed
class PricinglistState with _$PricinglistState {
  const factory PricinglistState.initial() = _Initial;
  const factory PricinglistState.success(PaginatedResponse data) = _Success;
  const factory PricinglistState.error() = _Error;
}
