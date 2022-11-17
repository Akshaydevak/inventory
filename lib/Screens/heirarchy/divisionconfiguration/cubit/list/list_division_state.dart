part of 'list_division_cubit.dart';

@freezed
class ListDivisionState with _$ListDivisionState {
  const factory ListDivisionState.initial() = _Initial;
  const factory ListDivisionState.success(PaginatedResponse data) = _Success;
  const factory ListDivisionState.error() = _Error;
}
