import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channels2allocation/models/channelsreadmodel.dart';

part 'allocationdata_assign_state.dart';
part 'allocationdata_assign_cubit.freezed.dart';

class AllocationdataAssignCubit extends Cubit<AllocationdataAssignState> {
  AllocationdataAssignCubit() : super(AllocationdataAssignState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getChannelAllocationRead(int? id, int? channelId) async {
    emit(AllocationdataAssignState.initial());
    final result = await repo.getChannelAllocationRead(id, channelId);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
