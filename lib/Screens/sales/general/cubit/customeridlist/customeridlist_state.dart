part of 'customeridlist_cubit.dart';

@freezed
class CustomeridlistState with _$CustomeridlistState {
  const factory CustomeridlistState.initial() = _Initial;
  const factory CustomeridlistState.success(PaginatedResponse data) =
  _Success;
  const factory CustomeridlistState.error() = _Error;
}
