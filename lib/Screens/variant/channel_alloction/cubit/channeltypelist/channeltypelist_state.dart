part of 'channeltypelist_cubit.dart';

@freezed
class ChanneltypelistState with _$ChanneltypelistState {
  const factory ChanneltypelistState.initial() = _Initial;
  const factory ChanneltypelistState.success(PaginatedResponse data) = _Success;
  const factory ChanneltypelistState.error() = _Error;
}
