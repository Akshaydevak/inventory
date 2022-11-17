import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'categorylistdivisionconfig_state.dart';
part 'categorylistdivisionconfig_cubit.freezed.dart';

class CategorylistdivisionconfigCubit
    extends Cubit<CategorylistdivisionconfigState> {
  CategorylistdivisionconfigCubit()
      : super(CategorylistdivisionconfigState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getCategoryList({String? type, int? id}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(CategorylistdivisionconfigState.initial());
    final result = await repo.getCategoryList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchCategoryList(String filter, {String? type, int? id}) async {
    emit(CategorylistdivisionconfigState.initial());
    final result = await repo.getCategoryList(
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
    final result = await repo.getCategoryList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getCategoryList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(CategorylistdivisionconfigState.initial());
    getCategoryList();
  }
}
