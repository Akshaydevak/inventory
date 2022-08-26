import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'itemcreation_list_state.dart';
part 'itemcreation_list_cubit.freezed.dart';

class ItemcreationListCubit extends Cubit<ItemcreationListState> {
  ItemcreationListCubit() : super(ItemcreationListState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();

  String? prev;
  String? next;
  Future getItemListList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ItemcreationListState.initial());
    final result = await repo.getItemListList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchItemList(String filter) async {
    emit(ItemcreationListState.initial());
    final result = await repo.getItemListList("name=" + filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getItemListList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getItemListList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ItemcreationListState.initial());
    getItemListList();
  }
}
