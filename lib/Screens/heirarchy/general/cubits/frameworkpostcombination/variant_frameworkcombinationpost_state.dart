part of 'variant_frameworkcombinationpost_cubit.dart';

@freezed
class VariantFrameworkcombinationpostState
    with _$VariantFrameworkcombinationpostState {
  const factory VariantFrameworkcombinationpostState.initial() = _Initial;
  const factory VariantFrameworkcombinationpostState.loading() = _Loading;
  const factory VariantFrameworkcombinationpostState.error() = _Error1;
  const factory VariantFrameworkcombinationpostState.success(
      DoubleResponse data) = _Success;
}
