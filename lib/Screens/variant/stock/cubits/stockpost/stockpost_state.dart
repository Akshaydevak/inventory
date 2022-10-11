part of 'stockpost_cubit.dart';

@freezed
class StockpostState with _$StockpostState {
  const factory StockpostState.initial() = _Initial;
  const factory StockpostState.loading() = _Loading;
  const factory StockpostState.error() = _Error;
  const factory StockpostState.success(DoubleResponse data) = _Success;
}
