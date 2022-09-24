part of 'channel_stock_allocation_post_cubit.dart';

@freezed
class ChannelStockAllocationPostState with _$ChannelStockAllocationPostState {
  const factory ChannelStockAllocationPostState.initial() = _Initial;
  const factory ChannelStockAllocationPostState.loading() = _Loading;
  const factory ChannelStockAllocationPostState.error() = _Error;
  const factory ChannelStockAllocationPostState.success(DoubleResponse data) =
      _Success;
}
