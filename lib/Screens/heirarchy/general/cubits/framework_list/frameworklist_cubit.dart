import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'frameworklist_state.dart';
part 'frameworklist_cubit.freezed.dart';

class FrameworklistCubit extends Cubit<FrameworklistState> {
  FrameworklistCubit() : super(FrameworklistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();


  String? prev;
  String? next;
  Future getFrameWorklist() async {
    print("here after  creation calll at cubit");

    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(FrameworklistState.initial());
    final result = await repo.getFrameWorklist(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchCostingList(String filter) async {
    emit(FrameworklistState.initial());
    final result = await repo.getFrameWorklist("?name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getFrameWorklist("?$next");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getFrameWorklist("?$next");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(FrameworklistState.initial());
    getFrameWorklist();
  }

}
