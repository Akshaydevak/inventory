part of 'salesgeneralvertical_cubit.dart';

@freezed
class SalesgeneralverticalState with _$SalesgeneralverticalState {
  const factory SalesgeneralverticalState.initial() = _Initial;
  const factory SalesgeneralverticalState.success(PaginatedResponse data) = _Success;
  const factory SalesgeneralverticalState.error() = _Error;
}
