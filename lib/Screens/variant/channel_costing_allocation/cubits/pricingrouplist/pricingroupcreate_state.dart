part of 'pricingroupcreate_cubit.dart';

@freezed
class PricingroupcreateState with _$PricingroupcreateState {
  const factory PricingroupcreateState.initial() = _Initial;
  const factory PricingroupcreateState.success(PaginatedResponse data) =
      _Success;
  const factory PricingroupcreateState.error() = _Error;
}
