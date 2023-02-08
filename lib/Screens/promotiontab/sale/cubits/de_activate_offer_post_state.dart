part of 'de_activate_offer_post_cubit.dart';


@freezed
class DeActivateOfferPostState with _$DeActivateOfferPostState {
  const factory DeActivateOfferPostState.initial() = _Initial;
  const factory DeActivateOfferPostState.loading() = _Loading;
  const factory DeActivateOfferPostState.error() = _Error1;
  const factory DeActivateOfferPostState.success(DoubleResponse data) = _Success;
}
