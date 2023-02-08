part of 'variant_list_promotion_cubit.dart';


@freezed
class VariantListPromotionState with _$VariantListPromotionState {
  const factory VariantListPromotionState.initial() = _Initial;
  const factory VariantListPromotionState.success(PaginatedResponse data) = _Success;
  const factory VariantListPromotionState.error() = _Error;
}
