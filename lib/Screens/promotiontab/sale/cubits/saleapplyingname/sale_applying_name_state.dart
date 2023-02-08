part of 'sale_applying_name_cubit.dart';


@freezed
class SaleApplyingNameState with _$SaleApplyingNameState {
  const factory SaleApplyingNameState.initial() = _Initial;
  const factory SaleApplyingNameState.success(PaginatedResponse data) = _Success;
  const factory SaleApplyingNameState.error() = _Error;
}
