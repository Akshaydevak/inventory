part of 'promotionsale_vertical_list_cubit.dart';


@freezed
class PromotionsaleVerticalListState with _$PromotionsaleVerticalListState {
  const factory PromotionsaleVerticalListState.initial() = _Initial;
  const factory PromotionsaleVerticalListState.success(PaginatedResponse data) = _Success;
  const factory PromotionsaleVerticalListState.error() = _Error;

}
