import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';

part 'channelsttocktableread_state.dart';
part 'channelsttocktableread_cubit.freezed.dart';

class ChannelsttocktablereadCubit extends Cubit<ChannelsttocktablereadState> {
  ChannelsttocktablereadCubit() : super(ChannelsttocktablereadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getChannelStockTableRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getChannelStockTableRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
