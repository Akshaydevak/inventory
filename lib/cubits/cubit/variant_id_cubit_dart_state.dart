part of 'variant_id_cubit_dart_cubit.dart';

@freezed
class VariantIdCubitDartState with _$VariantIdCubitDartState {
  const factory VariantIdCubitDartState.initial() = _Initial;
  const factory VariantIdCubitDartState.success(PaginatedResponse data) =
  _Success;
  const factory VariantIdCubitDartState.error() = _Error1;

}
