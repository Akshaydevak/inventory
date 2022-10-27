import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'uomgruoplist_state.dart';
part 'uomgruoplist_cubit.freezed.dart';

class UomgruoplistCubit extends Cubit<UomgruoplistState> {
  UomgruoplistCubit() : super(UomgruoplistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getUomGroupist() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(UomgruoplistState.initial());
    final result = await repo.getUomGroupist(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchUomgroupList(String filter) async {
    print("filter"+filter.toString());
    emit(UomgruoplistState.initial());
    final result = await repo.getUomGroupist("name="+ filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getUomGroupist(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getUomGroupist(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(UomgruoplistState.initial());
    getUomGroupist();
  }
}
