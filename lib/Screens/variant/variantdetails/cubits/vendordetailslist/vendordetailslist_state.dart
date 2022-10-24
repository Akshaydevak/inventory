part of 'vendordetailslist_cubit.dart';

@freezed
class VendordetailslistState with _$VendordetailslistState {
  const factory VendordetailslistState.initial() = _Initial;
  const factory VendordetailslistState.success(PaginatedResponse data) =
      _Success;
  const factory VendordetailslistState.error() = _Error;
}
