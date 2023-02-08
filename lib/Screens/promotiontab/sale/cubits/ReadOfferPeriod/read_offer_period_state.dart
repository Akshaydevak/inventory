part of 'read_offer_period_cubit.dart';



@freezed
class ReadOfferPeriodState with _$ReadOfferPeriodState {
  const factory ReadOfferPeriodState.initial() = _Initial;
  const factory ReadOfferPeriodState.loading() = _Loading;
  const factory ReadOfferPeriodState.error() = _Error;
  const factory ReadOfferPeriodState.success(ReadOfferPeriod data) =_Success;
}
