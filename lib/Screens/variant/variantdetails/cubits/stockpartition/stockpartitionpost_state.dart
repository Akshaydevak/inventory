part of 'stockpartitionpost_cubit.dart';


@freezed
class StockpartitionpostState with _$StockpartitionpostState {

  const factory StockpartitionpostState.initial() = _Initial;
  const factory StockpartitionpostState.loading() = _Loading;
  const factory StockpartitionpostState.error() = _Error1;
  const factory StockpartitionpostState.success(DoubleResponse data) = _Success;
}
