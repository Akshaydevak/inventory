part of 'vendordetails_cubit.dart';

@freezed
class VendordetailsState with _$VendordetailsState {
  const factory VendordetailsState.initial() = _Initial;
  const factory VendordetailsState.loading() = _Loading;
  const factory VendordetailsState.error() = _Error1;
  const factory VendordetailsState.success(VariantDetailsModel data) = _Success;
}
