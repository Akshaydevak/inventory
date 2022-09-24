part of 'costingcreatelist_cubit.dart';

@freezed
class CostingcreatelistState with _$CostingcreatelistState {
  const factory CostingcreatelistState.initial() = _Initial;
  const factory CostingcreatelistState.success(PaginatedResponse data) =
      _Success;
  const factory CostingcreatelistState.error() = _Error;
}
