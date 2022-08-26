part of 'salesgeneraldelete_cubit.dart';

@freezed
class SalesgeneraldeleteState with _$SalesgeneraldeleteState {
  const factory SalesgeneraldeleteState.initial() = _Initial;
  const factory SalesgeneraldeleteState.loading() = _Loading;
  const factory SalesgeneraldeleteState.error() = _Error;
  const factory SalesgeneraldeleteState.success(DoubleResponse data) = _Success;
}
