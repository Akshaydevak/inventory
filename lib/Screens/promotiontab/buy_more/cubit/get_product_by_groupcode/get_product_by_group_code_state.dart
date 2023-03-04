part of 'get_product_by_group_code_cubit.dart';


@freezed
class GetProductByGroupCodeState with _$GetProductByGroupCodeState {
  const factory GetProductByGroupCodeState.initial() = _Initial;
  const factory GetProductByGroupCodeState.success(PaginatedResponse data) = _Success;
  const factory GetProductByGroupCodeState.error() = _Error;
}
