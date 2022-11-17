part of 'uomlist_cubit.dart';

@freezed
class UomlistState with _$UomlistState {
  const factory UomlistState.initial() = _Initial;
  const factory UomlistState.success(PaginatedResponse data) = _Success;
  const factory UomlistState.error() = _Error;
}
