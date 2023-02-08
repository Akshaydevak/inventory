part of 'list_offer_period_cubit.dart';

@freezed
class ListOfferPeriodState with _$ListOfferPeriodState {
  const factory ListOfferPeriodState.initial() = _Initial;
  const factory ListOfferPeriodState.success(PaginatedResponse data) = _Success;
  const factory ListOfferPeriodState.error() = _Error;
}
