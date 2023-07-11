import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_stockAllocation/model/channelstock_read.dart';

part 'channelstockallocationread_state.dart';
part 'channelstockallocationread_cubit.freezed.dart';

class ChannelstockallocationreadCubit
    extends Cubit<ChannelstockallocationreadState> {
  ChannelstockallocationreadCubit()
      : super(ChannelstockallocationreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getChannelStockAllocationRead(int? id, int? channelId) async {
    emit(ChannelstockallocationreadState.initial());
    print("idddidd" + id.toString());
    final result = await repo.getChannelStockAllocationRead(id, channelId);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
