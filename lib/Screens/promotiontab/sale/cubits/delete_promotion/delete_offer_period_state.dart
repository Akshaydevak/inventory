part of 'delete_offer_period_cubit.dart';



@freezed
class DeleteOfferPeriodState with _$DeleteOfferPeriodState {
  const factory DeleteOfferPeriodState.initial() = _Initial;
  const factory DeleteOfferPeriodState.loading() = _Loading;
  const factory DeleteOfferPeriodState.error() = _Error;
  const factory DeleteOfferPeriodState.success(DoubleResponse data) =_Success;
}