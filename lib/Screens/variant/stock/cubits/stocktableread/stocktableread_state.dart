part of 'stocktableread_cubit.dart';

@freezed
class StocktablereadState with _$StocktablereadState {
  const factory StocktablereadState.initial() = _Initial;
  const factory StocktablereadState.loading() = _Loading;
  const factory StocktablereadState.error() = _Error;
  const factory StocktablereadState.success(List<StockTableReadModel> data) =
      _Success;
}
