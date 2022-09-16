part of 'stockvertical_cubit.dart';

@freezed
class StockverticalState with _$StockverticalState {
  const factory StockverticalState.initial() = _Initial;
  const factory StockverticalState.success(PaginatedResponse data) = _Success;
  const factory StockverticalState.error() = _Error;
}
