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
  Future getCategoryist({String? type,int? id}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(CategorylistState.initial());
    final result = await repo.getCategoryist(
      null,type:type,id:id
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchCategoryist(String filter,{String? type,int ? id}) async {
    print(filter);
    emit(CategorylistState.initial());
    final result = await repo.getCategoryist( "name="+filter.toString(),type: type,id:id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type,int ? id}) async {
    final result = await repo.getCategoryist(next,type: type,id:id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type,int ? id}) async {
    // print(previous);
    final result = await repo.getCategoryist(prev,type: type,id:id);
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
