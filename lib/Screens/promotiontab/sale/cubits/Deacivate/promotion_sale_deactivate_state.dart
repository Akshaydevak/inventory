part of 'promotion_sale_deactivate_cubit.dart';


@freezed
class PromotionSaleDeactivateState with _$PromotionSaleDeactivateState {
  const factory PromotionSaleDeactivateState.initial() = _Initial;
  const factory PromotionSaleDeactivateState.loading() = _Loading;
  const factory PromotionSaleDeactivateState.error() = _Error;
  const factory PromotionSaleDeactivateState.success(List<VariantModel> data) =_Success;
}
