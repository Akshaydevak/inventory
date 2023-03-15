part of 'create_promotion_coupon_cubit.dart';


@freezed
class CreatePromotionCouponState with _$CreatePromotionCouponState {
  const factory CreatePromotionCouponState.initial() = _Initial;
  const factory CreatePromotionCouponState.loading() = _Loading;
  const factory CreatePromotionCouponState.error() = _Error1;
  const factory CreatePromotionCouponState.success(DoubleResponse data) = _Success;
}
