import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'linkedlistverticallist_state.dart';
part 'linkedlistverticallist_cubit.freezed.dart';

class LinkedlistverticallistCubit extends Cubit<LinkedlistverticallistState> {
  LinkedlistverticallistCubit() : super(LinkedlistverticallistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getLinkedItemList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(LinkedlistverticallistState.initial());
    final result = await repo.getLinkedItemList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchgetLinkedItem(String? filter) async {
    emit(LinkedlistverticallistState.initial());
    final result = await repo.getLinkedItemList(filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getLinkedItemList(
      next,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getLinkedItemList(
      prev,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(LinkedlistverticallistState.initial());
    getLinkedItemList();
  }
}
