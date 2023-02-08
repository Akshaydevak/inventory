part of 'creation_promotion_discount_cubit.dart';


@freezed
class CreationPromotionDiscountState with _$CreationPromotionDiscountState {
  const factory CreationPromotionDiscountState.initial() = _Initial;
  const factory CreationPromotionDiscountState.loading() = _Loading;
  const factory CreationPromotionDiscountState.error() = _Error1;
  const factory CreationPromotionDiscountState.success(DoubleResponse data) = _Success;
}
