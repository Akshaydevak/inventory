part of 'itemcreation_list_cubit.dart';

@freezed
class ItemcreationListState with _$ItemcreationListState {
  const factory ItemcreationListState.initial() = _Initial;
  const factory ItemcreationListState.success(PaginatedResponse data) = _Success;
  const factory ItemcreationListState.error() = _Error;
}
