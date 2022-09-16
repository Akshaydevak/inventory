part of 'variantread_cubit.dart';

@freezed
class VariantreadState with _$VariantreadState {
  const factory VariantreadState.initial() = _Initial;
  const factory VariantreadState.loading() = _Loading;
  const factory VariantreadState.error() = _Error;
  const factory VariantreadState.success(VariantReadModel data) = _Success;
}
