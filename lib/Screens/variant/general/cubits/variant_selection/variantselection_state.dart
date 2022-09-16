part of 'variantselection_cubit.dart';

@freezed
class VariantselectionState with _$VariantselectionState {
  const factory VariantselectionState.initial() = _Initial;
  const factory VariantselectionState.success(PaginatedResponse data) =
      _Success;
  const factory VariantselectionState.error() = _Error;
}
