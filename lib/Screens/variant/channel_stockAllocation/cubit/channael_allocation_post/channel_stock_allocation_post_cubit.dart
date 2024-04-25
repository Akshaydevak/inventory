import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_read.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'channel_stock_allocation_post_state.dart';
part 'channel_stock_allocation_post_cubit.freezed.dart';

class ChannelStockAllocationPostCubit
    extends Cubit<ChannelStockAllocationPostState> {
  ChannelStockAllocationPostCubit()
      : super(ChannelStockAllocationPostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future channelStockAllocationPatch(
      int? id, ChannelAllocationStockStockReadModel model) async {
   emit(ChannelStockAllocationPostState.initial());
    final result = await repo.channelStockAllocationPatch(model, id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
