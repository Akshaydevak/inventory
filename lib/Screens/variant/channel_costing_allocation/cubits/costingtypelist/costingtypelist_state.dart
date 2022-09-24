part of 'costingtypelist_cubit.dart';

@freezed
class CostingtypelistState with _$CostingtypelistState {
  const factory CostingtypelistState.initial() = _Initial;
  const factory CostingtypelistState.success(PaginatedResponse data) = _Success;
  const factory CostingtypelistState.error() = _Error;
}
