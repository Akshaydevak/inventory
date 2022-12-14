import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'sales_list_state.dart';
part 'sales_list_cubit.freezed.dart';

class SalesListCubit extends Cubit<SalesListState> {
  SalesListCubit() : super(SalesListState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getSalesList({String? type,int ? id}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(SalesListState.initial());
    final result = await repo.getSalesList(null, type: type,id:id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchSalesList(String filter, {String? type,int ? id}) async {
    emit(SalesListState.initial());
    final result = await repo.getSalesList("name="+filter,id:id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getSalesList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getSalesList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(SalesListState.initial());
    getSalesList();
  }
}
