import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'material_list_state.dart';
part 'material_list_cubit.freezed.dart';

class MaterialListCubit extends Cubit<MaterialListState> {
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  MaterialListCubit() : super(MaterialListState.initial());
  String? prev;
  String? next;
  Future getMaterialList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(MaterialListState.initial());
    final result = await repo.searchMaterialList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchMaterialList(String filter) async {
    emit(MaterialListState.initial());
    final result = await repo.searchMaterialList("name=" + filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList(String nextURL) async {
    print(next);
    final result = await repo.searchMaterialList(next==null?nextURL:next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.searchMaterialList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(MaterialListState.initial());
    getMaterialList();
  }
}
