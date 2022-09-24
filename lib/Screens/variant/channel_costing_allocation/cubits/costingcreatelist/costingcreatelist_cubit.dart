import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'costingcreatelist_state.dart';
part 'costingcreatelist_cubit.freezed.dart';

class CostingcreatelistCubit extends Cubit<CostingcreatelistState> {
  CostingcreatelistCubit() : super(CostingcreatelistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getCostingCreateList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(CostingcreatelistState.initial());
    final result = await repo.getCostingCreateList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchCostingList(String filter) async {
    emit(CostingcreatelistState.initial());
    final result = await repo.getCostingCreateList(filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getCostingCreateList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getCostingCreateList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(CostingcreatelistState.initial());
    getCostingCreateList();
  }
}
