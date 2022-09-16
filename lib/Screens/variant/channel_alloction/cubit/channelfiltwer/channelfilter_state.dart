part of 'channelfilter_cubit.dart';

@freezed
class ChannelfilterState with _$ChannelfilterState {
  const factory ChannelfilterState.initial() = _Initial;
  const factory ChannelfilterState.success(PaginatedResponse data) = _Success;
  const factory ChannelfilterState.error() = _Error;
}
