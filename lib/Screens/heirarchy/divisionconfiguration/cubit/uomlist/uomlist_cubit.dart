import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'uomlist_state.dart';
part 'uomlist_cubit.freezed.dart';

class UomlistCubit extends Cubit<UomlistState> {
  UomlistCubit() : super(UomlistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getUomDivisionList({String? type, int? id}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(UomlistState.initial());
    final result = await repo.getUomDivisionList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchUomList(String filter, {String? type, int? id}) async {
    emit(UomlistState.initial());
    final result = await repo.getUomDivisionList(
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
    final result = await repo.getUomDivisionList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getUomDivisionList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(UomlistState.initial());
    getUomDivisionList();
  }
}
