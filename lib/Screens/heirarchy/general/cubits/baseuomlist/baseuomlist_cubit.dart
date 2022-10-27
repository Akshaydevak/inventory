import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'baseuomlist_state.dart';
part 'baseuomlist_cubit.freezed.dart';

class BaseuomlistCubit extends Cubit<BaseuomlistState> {
  BaseuomlistCubit() : super(BaseuomlistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getUomist({String? type }) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(BaseuomlistState.initial());
    final result = await repo.getUomist(
      null,type:type
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchUomList(String filter,{String? type}) async {
    emit(BaseuomlistState.initial());
    final result = await repo.getUomist("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getUomist(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getUomist(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(BaseuomlistState.initial());
    getUomist();
  }
}
