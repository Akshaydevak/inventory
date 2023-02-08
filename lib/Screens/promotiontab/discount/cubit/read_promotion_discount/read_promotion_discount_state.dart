part of 'read_promotion_discount_cubit.dart';


@freezed
class ReadPromotionDiscountState with _$ReadPromotionDiscountState {
  const factory ReadPromotionDiscountState.initial() = _Initial;
  const factory ReadPromotionDiscountState.loading() = _Loading;
  const factory ReadPromotionDiscountState.error() = _Error;
  const factory ReadPromotionDiscountState.success(PromotionDiscountReadModel data) =_Success;
}
