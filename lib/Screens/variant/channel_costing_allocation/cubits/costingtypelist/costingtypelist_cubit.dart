import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'costingtypelist_state.dart';
part 'costingtypelist_cubit.freezed.dart';

class CostingtypelistCubit extends Cubit<CostingtypelistState> {
  CostingtypelistCubit() : super(CostingtypelistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getCostingTypeList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(CostingtypelistState.initial());
    final result = await repo.getCostingTypeList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchCostingTypeList(String filter) async {
    emit(CostingtypelistState.initial());
    final result = await repo.getCostingTypeList(filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getCostingTypeList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getCostingTypeList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(CostingtypelistState.initial());
    getCostingTypeList();
  }
}
