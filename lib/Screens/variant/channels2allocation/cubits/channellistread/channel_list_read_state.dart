part of 'channel_list_read_cubit.dart';

@freezed
class ChannelListReadState with _$ChannelListReadState {
  const factory ChannelListReadState.initial() = _Initial;
  const factory ChannelListReadState.success(PaginatedResponse data) = _Success;
  const factory ChannelListReadState.error() = _Error;
}
