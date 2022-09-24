part of 'variantframeworkpost_cubit.dart';

@freezed
class VariantframeworkpostState with _$VariantframeworkpostState {
  const factory VariantframeworkpostState.initial() = _Initial;
  const factory VariantframeworkpostState.loading() = _Loading;
  const factory VariantframeworkpostState.error() = _Error1;
  const factory VariantframeworkpostState.success(DoubleResponse data) =
      _Success;
}
