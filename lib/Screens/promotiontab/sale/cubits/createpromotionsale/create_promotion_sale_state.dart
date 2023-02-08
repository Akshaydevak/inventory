part of 'create_promotion_sale_cubit.dart';


@freezed
class CreatePromotionSaleState with _$CreatePromotionSaleState {
  const factory CreatePromotionSaleState.initial() = _Initial;
  const factory CreatePromotionSaleState.loading() = _Loading;
  const factory CreatePromotionSaleState.error() = _Error1;
  const factory CreatePromotionSaleState.success(DoubleResponse data) = _Success;
}
