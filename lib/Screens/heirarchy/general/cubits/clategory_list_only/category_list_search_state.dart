part of 'category_list_search_cubit.dart';


@freezed
class CategoryListSearchState with _$CategoryListSearchState {
  const factory CategoryListSearchState.initial() = _Initial;
  const factory CategoryListSearchState.success(PaginatedResponse data) = _Success;
  const factory CategoryListSearchState.error() = _Error;
}
