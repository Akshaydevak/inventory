part of 'channel_list_cubit.dart';


@freezed
class ChannelListState with _$ChannelListState {
  const factory ChannelListState.initial() = _Initial;
  const factory ChannelListState.loading() = _Loading;
  const factory ChannelListState.error() = _Error;
  const factory ChannelListState.success(List<ChannelListModel> data) =_Success;
}
