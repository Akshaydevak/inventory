part of 'buy_more_vertical_list_cubit.dart';


@freezed
class BuyMoreVerticalListState with _$BuyMoreVerticalListState {
  const factory BuyMoreVerticalListState.initial() = _Initial;
  const factory BuyMoreVerticalListState.success(PaginatedResponse data) = _Success;
  const factory BuyMoreVerticalListState.error() = _Error;

}
