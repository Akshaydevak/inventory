part of 'shippingaddresscreation_cubit.dart';

@freezed
class ShippingaddresscreationState with _$ShippingaddresscreationState {
  const factory ShippingaddresscreationState.initial() = _Initial;
  const factory ShippingaddresscreationState.loading() = _Loading;
  const factory ShippingaddresscreationState.error() = _Error1;
  const factory ShippingaddresscreationState.success(DoubleResponse data) = _Success;
}
