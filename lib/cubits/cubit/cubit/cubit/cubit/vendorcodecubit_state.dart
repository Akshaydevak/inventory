part of 'vendorcodecubit_cubit.dart';

@freezed
class VendorcodecubitState with _$VendorcodecubitState {
  const factory VendorcodecubitState.initial() = _Initial;
  const factory VendorcodecubitState.loading() = _Loading;
  const factory VendorcodecubitState.error() = _Error1;
  const factory VendorcodecubitState.success(VendorCodeModel) = _Success;
}
