part of 'allocationdata_assign_cubit.dart';

@freezed
class AllocationdataAssignState with _$AllocationdataAssignState {
  const factory AllocationdataAssignState.initial() = _Initial; 
   const factory AllocationdataAssignState.loading() = _Loading;
  const factory AllocationdataAssignState.error() = _Error;
  const factory AllocationdataAssignState.success(
      ChannelListModel data) = _Success;
}
