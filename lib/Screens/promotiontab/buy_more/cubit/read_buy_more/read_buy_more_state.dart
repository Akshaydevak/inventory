part of 'read_buy_more_cubit.dart';


@freezed
class ReadBuyMoreState with _$ReadBuyMoreState {
  const factory ReadBuyMoreState.initial() = _Initial;
  const factory ReadBuyMoreState.loading() = _Loading;
  const factory ReadBuyMoreState.error() = _Error;
  const factory ReadBuyMoreState.success(PromotionBuyMoreCreationModel data) =_Success;
}
