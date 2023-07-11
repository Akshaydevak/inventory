import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'category_list_search_state.dart';
part 'category_list_search_cubit.freezed.dart';

class CategoryListSearchCubit extends Cubit<CategoryListSearchState> {
  CategoryListSearchCubit() : super(CategoryListSearchState.initial());
  String? prev;
  String? next;
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getCategoryList2() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(CategoryListSearchState.initial());
    final result = await repo.getCategoryListOnly(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchgetCategoryList2(String filter) async {
    emit(CategoryListSearchState.initial());
    final result = await repo.getCategoryListOnly("name=" + filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList(String nextURL) async {
    print(next);
    final result = await repo.getCategoryListOnly(next==null?nextURL:next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getCategoryListOnly(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }



}
