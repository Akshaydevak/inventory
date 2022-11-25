part of 'shippingadrees_cubit.dart';

@freezed
class ShippingadreesState with _$ShippingadreesState {
  const factory ShippingadreesState.initial() = _Initial;
  const factory ShippingadreesState.success(PaginatedResponse data) =
  _Success;
  const factory ShippingadreesState.error() = _Error;
}
