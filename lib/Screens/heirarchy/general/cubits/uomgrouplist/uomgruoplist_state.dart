part of 'uomgruoplist_cubit.dart';

@freezed
class UomgruoplistState with _$UomgruoplistState {
  const factory UomgruoplistState.initial() = _Initial;
  const factory UomgruoplistState.success(PaginatedResponse data) = _Success;
  const factory UomgruoplistState.error() = _Error;
}
