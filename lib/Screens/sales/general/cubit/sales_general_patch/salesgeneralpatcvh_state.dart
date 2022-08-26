part of 'salesgeneralpatcvh_cubit.dart';

@freezed
class SalesgeneralpatcvhState with _$SalesgeneralpatcvhState {
  const factory SalesgeneralpatcvhState.initial() = _Initial;
  const factory SalesgeneralpatcvhState.loading() = _Loading;
  const factory SalesgeneralpatcvhState.error() = _Error;
  const factory SalesgeneralpatcvhState.success(DoubleResponse data) = _Success;
}
