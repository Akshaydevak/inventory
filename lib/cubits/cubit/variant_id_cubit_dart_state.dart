part of 'variant_id_cubit_dart_cubit.dart';

@freezed
class VariantIdCubitDartState with _$VariantIdCubitDartState {
  const factory VariantIdCubitDartState.initial() = _Initial;
  const factory VariantIdCubitDartState.loading() = _Loading;
  const factory VariantIdCubitDartState.error() = _Error1;
  const factory VariantIdCubitDartState.success(List<VariantId> data) =
      _Success;
}
