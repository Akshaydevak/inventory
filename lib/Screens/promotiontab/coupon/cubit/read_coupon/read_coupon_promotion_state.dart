part of 'read_coupon_promotion_cubit.dart';


@freezed
class ReadCouponPromotionState with _$ReadCouponPromotionState {
  const factory ReadCouponPromotionState.initial() = _Initial;
  const factory ReadCouponPromotionState.loading() = _Loading;
  const factory ReadCouponPromotionState.error() = _Error;
  const factory ReadCouponPromotionState.success(PromotionCouponCreationModel data) =_Success;

}
