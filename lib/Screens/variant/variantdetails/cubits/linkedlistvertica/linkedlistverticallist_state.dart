part of 'linkedlistverticallist_cubit.dart';

@freezed
class LinkedlistverticallistState with _$LinkedlistverticallistState {
  const factory LinkedlistverticallistState.initial() = _Initial;
  const factory LinkedlistverticallistState.success(PaginatedResponse data) =
      _Success;
  const factory LinkedlistverticallistState.error() = _Error;
}
