part of 'promotion_image_cubit.dart';


@freezed
class PromotionImageState with _$PromotionImageState {
  const factory PromotionImageState.initial() = _Initial;
  const factory PromotionImageState.loading() = _Loading;
  const factory PromotionImageState.error() = _Error;
  const factory PromotionImageState.success(DoubleResponse data) = _Success;

}
