part of 'baseuomlist_cubit.dart';

@freezed
class BaseuomlistState with _$BaseuomlistState {
  const factory BaseuomlistState.initial() = _Initial;
  const factory BaseuomlistState.success(PaginatedResponse data) = _Success;
  const factory BaseuomlistState.error() = _Error;
}
