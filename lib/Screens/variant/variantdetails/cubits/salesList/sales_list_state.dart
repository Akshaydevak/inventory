part of 'sales_list_cubit.dart';

@freezed
class SalesListState with _$SalesListState {
  const factory SalesListState.initial() = _Initial;
  const factory SalesListState.success(PaginatedResponse data) = _Success;
  const factory SalesListState.error() = _Error;
}
