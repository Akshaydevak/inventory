part of 'uomgroupread_cubit.dart';

@freezed
class UomgroupreadState with _$UomgroupreadState {
  const factory UomgroupreadState.initial() = _Initial;
  const factory UomgroupreadState.loading() = _Loading;
  const factory UomgroupreadState.error() = _Error;
  const factory UomgroupreadState.success(DevisionReadModel data) = _Success;
}
