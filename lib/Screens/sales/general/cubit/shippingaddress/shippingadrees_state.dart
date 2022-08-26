part of 'shippingadrees_cubit.dart';

@freezed
class ShippingadreesState with _$ShippingadreesState {
  const factory ShippingadreesState.initial() = _Initial;
  const factory ShippingadreesState.loading() = _Loading;
  const factory ShippingadreesState.error() = _Error1;
  const factory ShippingadreesState.success(List<ShippingAddressModel> data) =
      _Success;
}
