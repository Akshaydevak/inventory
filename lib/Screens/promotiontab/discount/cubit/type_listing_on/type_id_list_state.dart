part of 'type_id_list_cubit.dart';

@freezed
class TypeIdListState with _$TypeIdListState {

  const factory TypeIdListState.initial() = _Initial;
  const factory TypeIdListState.success(PaginatedResponse data) = _Success;
  const factory TypeIdListState.error() = _Error;

}
