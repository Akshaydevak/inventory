part of 'promtion_sale_read_cubit.dart';


@freezed
class PromtionSaleReadState with _$PromtionSaleReadState {
  const factory PromtionSaleReadState.initial() = _Initial;
  const factory PromtionSaleReadState.loading() = _Loading;
  const factory PromtionSaleReadState.error() = _Error;
  const factory PromtionSaleReadState.success(PromotionSaleReadModel data) =_Success;
}
