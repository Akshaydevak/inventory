part of 'read_offer_group_cubit.dart';


@freezed
class ReadOfferGroupState with _$ReadOfferGroupState {
  const factory ReadOfferGroupState.initial() = _Initial;
  const factory ReadOfferGroupState.loading() = _Loading;
  const factory ReadOfferGroupState.error() = _Error;
  const factory ReadOfferGroupState.success(ReadOfferGroup data) =_Success;
}
