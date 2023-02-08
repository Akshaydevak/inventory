part of 'patch_offer_group_cubit.dart';


@freezed
class PatchOfferGroupState with _$PatchOfferGroupState {
  const factory PatchOfferGroupState.initial() = _Initial;
  const factory PatchOfferGroupState.loading() = _Loading;
  const factory PatchOfferGroupState.error() = _Error1;
  const factory PatchOfferGroupState.success(DoubleResponse data) = _Success;
}
