part of 'promotion_coupon_vertical_list_cubit.dart';


@freezed
class PromotionCouponVerticalListState with _$PromotionCouponVerticalListState {
  const factory PromotionCouponVerticalListState.initial() = _Initial;
  const factory PromotionCouponVerticalListState.success(PaginatedResponse data) = _Success;
  const factory PromotionCouponVerticalListState.error() = _Error;
}
