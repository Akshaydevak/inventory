part of 'channelstockvertical_cubit.dart';

@freezed
class ChannelstockverticalState with _$ChannelstockverticalState {
  const factory ChannelstockverticalState.initial() = _Initial;
  const factory ChannelstockverticalState.success(PaginatedResponse data) =
      _Success;
  const factory ChannelstockverticalState.error() = _Error;
}
