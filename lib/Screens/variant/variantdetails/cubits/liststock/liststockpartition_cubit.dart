import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'liststockpartition_state.dart';
part 'liststockpartition_cubit.freezed.dart';

class ListstockpartitionCubit extends Cubit<ListstockpartitionState> {
  ListstockpartitionCubit() : super(ListstockpartitionState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getStockPartitionList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ListstockpartitionState.initial());
    final result = await repo.getStockPartitionList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future getSearchStockPartitionList(String filter,) async {
    emit(ListstockpartitionState.initial());
    final result = await repo.getStockPartitionList("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getStockPartitionList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getStockPartitionList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ListstockpartitionState.initial());
    getStockPartitionList();
  }
}
