import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingpagecreation.dart';
import 'package:meta/meta.dart';

import '../../../purchasreturn/pages/repo.dart';

part 'costingchannel_read_state.dart';
part 'costingchannel_read_cubit.freezed.dart';

class CostingchannelReadCubit extends Cubit<CostingchannelReadState> {
  CostingchannelReadCubit() : super(CostingchannelReadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getChannelCostingRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getChannelCostingRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
