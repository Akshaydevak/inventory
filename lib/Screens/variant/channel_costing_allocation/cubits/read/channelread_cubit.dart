import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingpagecreation.dart';

part 'channelread_state.dart';
part 'channelread_cubit.freezed.dart';

class ChannelreadCubit extends Cubit<ChannelreadState> {
  ChannelreadCubit() : super(ChannelreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getCostingRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getCostingRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
