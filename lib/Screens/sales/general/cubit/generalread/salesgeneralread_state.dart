part of 'salesgeneralread_cubit.dart';

@freezed
class SalesgeneralreadState with _$SalesgeneralreadState {
  const factory SalesgeneralreadState.initial() = _Initial;
  const factory SalesgeneralreadState.loading() = _Loading;
  const factory SalesgeneralreadState.error() = _Error;
  const factory SalesgeneralreadState.success(SalesGeneralReadModel data) =
      _Success;
}
