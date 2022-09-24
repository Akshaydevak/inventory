import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'channelstockvertical_state.dart';
part 'channelstockvertical_cubit.freezed.dart';

class ChannelstockverticalCubit extends Cubit<ChannelstockverticalState> {
  ChannelstockverticalCubit() : super(ChannelstockverticalState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getChannelAllocationList(int? code) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ChannelstockverticalState.initial());
    final result = await repo.getChannelAllocationList(code);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchChannelStock() async {
    emit(ChannelstockverticalState.initial());
    final result = await repo.getChannelAllocationList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getChannelAllocationList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getChannelAllocationList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ChannelstockverticalState.initial());
    getChannelAllocationList(null);
  }
}
