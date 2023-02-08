part of 'list_offer_group_cubit.dart';



@freezed
class ListOfferGroupState with _$ListOfferGroupState {
  const factory ListOfferGroupState.initial() = _Initial;
  const factory ListOfferGroupState.success(PaginatedResponse data) = _Success;
  const factory ListOfferGroupState.error() = _Error;
}
