part of 'channelread_cubit.dart';

@freezed
class ChannelreadState with _$ChannelreadState {
  const factory ChannelreadState.initial() = _Initial;
  const factory ChannelreadState.loading() = _Loading;
  const factory ChannelreadState.error() = _Error;
  const factory ChannelreadState.success(List<Category> data) = _Success;
}
