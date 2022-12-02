import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'subcategory_state.dart';
part 'subcategory_cubit.freezed.dart';

class SubcategoryCubit extends Cubit<SubcategoryState> {
  SubcategoryCubit() : super(SubcategoryState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getSubCategoryList({int? id}) async {
    next = null;
    prev = null;
    print("enterdAAAAAAAAAAAAAAA");
    // items = [];
    emit(SubcategoryState.initial());
    final result = await repo.getSubCategoryList(null,id:id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchSubCategoryList(String filter,{int ? id}) async {
    emit(SubcategoryState.initial());
    final result = await repo.getSubCategoryList("name="+ filter,id:id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({int ? id}) async {
    final result = await repo.getSubCategoryList(next,id:id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({int ? id}) async {
    // print(previous);
    final result = await repo.getSubCategoryList(prev,id:id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(SubcategoryState.initial());
    getSubCategoryList();
  }
}
