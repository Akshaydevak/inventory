part of 'variant_creation_read_cubit.dart';

@freezed
class VariantCreationReadState with _$VariantCreationReadState {
  const factory VariantCreationReadState.initial() = _Initial;
  const factory VariantCreationReadState.loading() = _Loading;
  const factory VariantCreationReadState.error() = _Error;
  const factory VariantCreationReadState.success(
      VariantCreationReadModel data) = _Success;
}
