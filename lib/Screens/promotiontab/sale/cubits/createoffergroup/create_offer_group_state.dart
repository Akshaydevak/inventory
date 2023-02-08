part of 'create_offer_group_cubit.dart';


@freezed
class CreateOfferGroupState with _$CreateOfferGroupState {
  const factory CreateOfferGroupState.initial() = _Initial;
  const factory CreateOfferGroupState.loading() = _Loading;
  const factory CreateOfferGroupState.error() = _Error1;
  const factory CreateOfferGroupState.success(DoubleResponse data) = _Success;


}
