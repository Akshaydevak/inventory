part of 'uomgroup_creation_cubit.dart';

@freezed
class UomgroupCreationState with _$UomgroupCreationState {
  const factory UomgroupCreationState.initial() = _Initial;
  const factory UomgroupCreationState.loading() = _Loading;
  const factory UomgroupCreationState.error() = _Error1;
  const factory UomgroupCreationState.success(DoubleResponse data) = _Success;
}
