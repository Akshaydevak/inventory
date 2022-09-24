import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channels2allocation/models/channelsreadmodel.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'channelpatch_state.dart';
part 'channelpatch_cubit.freezed.dart';

class ChannelpatchCubit extends Cubit<ChannelpatchState> {
  ChannelpatchCubit() : super(ChannelpatchState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future channel2StockAllocationPatch(int? id, ChannelListModel model) async {
    print("sunithi" + id.toString());
    final result = await repo.channel2StockAllocationPatch(model, id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
