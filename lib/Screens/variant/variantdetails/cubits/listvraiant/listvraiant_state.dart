part of 'listvraiant_cubit.dart';

@freezed
class ListvraiantState with _$ListvraiantState {
  const factory ListvraiantState.initial() = _Initial;
  const factory ListvraiantState.success(PaginatedResponse data) = _Success;
  const factory ListvraiantState.error() = _Error;
}
