part of 'variantsearch_cubit.dart';

@freezed
class VariantsearchState with _$VariantsearchState {
  const factory VariantsearchState.initial() = _Initial;
  const factory VariantsearchState.success(PaginatedResponse data) = _Success;
  const factory VariantsearchState.error() = _Error;
}
