part of 'create_offer_period_cubit.dart';


@freezed
class CreateOfferPeriodState with _$CreateOfferPeriodState {
  const factory CreateOfferPeriodState.initial() = _Initial;
  const factory CreateOfferPeriodState.loading() = _Loading;
  const factory CreateOfferPeriodState.error() = _Error1;
  const factory CreateOfferPeriodState.success(DoubleResponse data) = _Success;
}
