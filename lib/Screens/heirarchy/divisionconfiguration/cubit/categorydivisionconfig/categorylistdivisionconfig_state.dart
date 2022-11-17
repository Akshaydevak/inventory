part of 'categorylistdivisionconfig_cubit.dart';

@freezed
class CategorylistdivisionconfigState with _$CategorylistdivisionconfigState {
  const factory CategorylistdivisionconfigState.initial() = _Initial;
  const factory CategorylistdivisionconfigState.success(
      PaginatedResponse data) = _Success;
  const factory CategorylistdivisionconfigState.error() = _Error;
}
