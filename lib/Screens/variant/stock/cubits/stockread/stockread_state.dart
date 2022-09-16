part of 'stockread_cubit.dart';

@freezed
class StockreadState with _$StockreadState {
  const factory StockreadState.initial() = _Initial;
  const factory StockreadState.loading() = _Loading;
  const factory StockreadState.error() = _Error;
  const factory StockreadState.success(StockReadModel data) = _Success;
}
