part of 'variantpost_cubit.dart';

@freezed
class VariantpostState with _$VariantpostState {
  const factory VariantpostState.initial() = _Initial;
  const factory VariantpostState.loading() = _Loading;
  const factory VariantpostState.error() = _Error1;
  const factory VariantpostState.success(DoubleResponse data) = _Success;
}
