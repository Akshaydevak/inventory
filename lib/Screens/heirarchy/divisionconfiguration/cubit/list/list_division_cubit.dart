import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'list_division_state.dart';
part 'list_division_cubit.freezed.dart';

class ListDivisionCubit extends Cubit<ListDivisionState> {
  ListDivisionCubit() : super(ListDivisionState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getDivisionVerticalList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ListDivisionState.initial());
    final result = await repo.getDivisionVerticalList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future getSearchDevisionList(String filter) async {
    emit(ListDivisionState.initial());
    final result = await repo.getDivisionVerticalList("name=" + filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getDivisionVerticalList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getDivisionVerticalList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ListDivisionState.initial());
    getDivisionVerticalList();
  }
}
