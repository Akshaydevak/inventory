part of 'listvariant_cubit.dart';

@freezed
class ListvariantState with _$ListvariantState {
  const factory ListvariantState.initial() = _Initial;
  const factory ListvariantState.success(PaginatedResponse data) = _Success;
  const factory ListvariantState.error() = _Error;
}
