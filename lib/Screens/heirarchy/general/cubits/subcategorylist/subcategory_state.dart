part of 'subcategory_cubit.dart';

@freezed
class SubcategoryState with _$SubcategoryState {
  const factory SubcategoryState.initial() = _Initial;
  const factory SubcategoryState.success(PaginatedResponse data) = _Success;
  const factory SubcategoryState.error() = _Error;
}
