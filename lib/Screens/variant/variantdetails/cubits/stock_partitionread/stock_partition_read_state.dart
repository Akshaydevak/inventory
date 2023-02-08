part of 'stock_partition_read_cubit.dart';


@freezed
class StockPartitionReadState with _$StockPartitionReadState {
  const factory StockPartitionReadState.initial() = _Initial;
  const factory StockPartitionReadState.loading() = _Loading;
  const factory StockPartitionReadState.error() = _Error;
  const factory StockPartitionReadState.success(StockPartitionModel data) = _Success;

}
