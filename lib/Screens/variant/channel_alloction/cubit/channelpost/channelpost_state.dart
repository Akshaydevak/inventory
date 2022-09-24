part of 'channelpost_cubit.dart';

@freezed
class ChannelpostState with _$ChannelpostState {
  const factory ChannelpostState.initial() = _Initial;
  const factory ChannelpostState.loading() = _Loading;
  const factory ChannelpostState.error() = _Error1;
  const factory ChannelpostState.success(DoubleResponse data) = _Success;
}
