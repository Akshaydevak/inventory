part of 'categorylist_cubit.dart';

@freezed
class CategorylistState with _$CategorylistState {
  const factory CategorylistState.initial() = _Initial;
  const factory CategorylistState.success(PaginatedResponse data) = _Success;
  const factory CategorylistState.error() = _Error;
}
