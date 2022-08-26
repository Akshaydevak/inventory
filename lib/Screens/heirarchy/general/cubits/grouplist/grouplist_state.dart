part of 'grouplist_cubit.dart';

@freezed
class GrouplistState with _$GrouplistState {
  const factory GrouplistState.initial() = _Initial;
  const factory GrouplistState.success(PaginatedResponse data) = _Success;
  const factory GrouplistState.error() = _Error;
}
