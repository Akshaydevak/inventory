import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'listcustomvertical_state.dart';
part 'listcustomvertical_cubit.freezed.dart';

class ListcustomverticalCubit extends Cubit<ListcustomverticalState> {
  ListcustomverticalCubit() : super(ListcustomverticalState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getCustomVerticalList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ListcustomverticalState.initial());
    final result = await repo.getCustomVerticalList(
      
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future getSearchCustomList(String filter) async {
    emit(ListcustomverticalState.initial());
    final result = await repo.getCustomVerticalList("name=" + filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getCustomVerticalList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getCustomVerticalList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ListcustomverticalState.initial());
    getCustomVerticalList();
  }
}
