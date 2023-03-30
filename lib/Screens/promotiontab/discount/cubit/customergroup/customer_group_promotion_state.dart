part of 'customer_group_promotion_cubit.dart';


@freezed
class CustomerGroupPromotionState with _$CustomerGroupPromotionState {
  const factory CustomerGroupPromotionState.initial() = _Initial;
  const factory CustomerGroupPromotionState.success(PaginatedResponse data) = _Success;
  const factory CustomerGroupPromotionState.error() = _Error;

}
