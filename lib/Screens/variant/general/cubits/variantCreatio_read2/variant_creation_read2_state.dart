part of 'variant_creation_read2_cubit.dart';

@freezed
class VariantCreationRead2State with _$VariantCreationRead2State {
  const factory VariantCreationRead2State.initial() = _Initial;
  const factory VariantCreationRead2State.loading() = _Loading;
  const factory VariantCreationRead2State.error() = _Error;
  const factory VariantCreationRead2State.success(
      List<VariantCreationRead2Model> data) = _Success;
}
