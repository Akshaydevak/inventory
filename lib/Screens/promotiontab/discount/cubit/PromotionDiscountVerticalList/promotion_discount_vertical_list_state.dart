part of 'promotion_discount_vertical_list_cubit.dart';


@freezed
class PromotionDiscountVerticalListState with _$PromotionDiscountVerticalListState {
  const factory PromotionDiscountVerticalListState.initial() = _Initial;
  const factory PromotionDiscountVerticalListState.success(PaginatedResponse data) = _Success;
  const factory PromotionDiscountVerticalListState.error() = _Error;

}
