part of 'devision_list_cubit.dart';

@freezed
class DevisionListState with _$DevisionListState {
  const factory DevisionListState.initial() = _Initial;
  const factory DevisionListState.success(PaginatedResponse data) = _Success;
  const factory DevisionListState.error() = _Error;
}
