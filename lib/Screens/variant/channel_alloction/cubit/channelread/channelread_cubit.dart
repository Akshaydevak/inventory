import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/stock/models/stockverticallist.dart';

part 'channelread_state.dart';
part 'channelread_cubit.freezed.dart';

class ChannelreadCubit extends Cubit<ChannelreadState> {
  ChannelreadCubit() : super(ChannelreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getChannelRead(
    int? id,
  ) async {
    final result = await repo.getChannelRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
