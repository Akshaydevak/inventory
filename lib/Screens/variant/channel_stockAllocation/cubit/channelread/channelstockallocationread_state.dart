part of 'channelstockallocationread_cubit.dart';

@freezed
class ChannelstockallocationreadState with _$ChannelstockallocationreadState {
  const factory ChannelstockallocationreadState.initial() = _Initial;
  const factory ChannelstockallocationreadState.loading() = _Loading;
  const factory ChannelstockallocationreadState.error() = _Error;
  const factory ChannelstockallocationreadState.success(
      ChannelAllocationStockStockReadModel data) = _Success;
}
