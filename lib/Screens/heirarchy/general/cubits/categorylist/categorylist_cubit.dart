import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'categorylist_state.dart';
part 'categorylist_cubit.freezed.dart';

class CategorylistCubit extends Cubit<CategorylistState> {
  CategorylistCubit() : super(CategorylistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getCategoryist({String? type}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(CategorylistState.initial());
    final result = await repo.getCategoryist(
      null,type:type
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchCategoryist(String filter,{String? type}) async {
    emit(CategorylistState.initial());
    final result = await repo.getCategoryist( filter,type: type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getCategoryist(next,type: type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getCategoryist(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(CategorylistState.initial());
    getCategoryist();
  }
}
