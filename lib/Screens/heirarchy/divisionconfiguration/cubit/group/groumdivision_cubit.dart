import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'groumdivision_state.dart';
part 'groumdivision_cubit.freezed.dart';

class GroumdivisionCubit extends Cubit<GroumdivisionState> {
  GroumdivisionCubit() : super(GroumdivisionState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getGroupList({String? type, int? id}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(GroumdivisionState.initial());
    final result = await repo.getGroupList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchUomList(String filter, {String? type, int? id}) async {
    emit(GroumdivisionState.initial());
    final result = await repo.getGroupList(
      "name=" + filter,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getGroupList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getGroupList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(GroumdivisionState.initial());
    getGroupList();
  }
}
