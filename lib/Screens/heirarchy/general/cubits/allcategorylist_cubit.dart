import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'allcategorylist_state.dart';
part 'allcategorylist_cubit.freezed.dart';

class AllcategorylistCubit extends Cubit<AllcategorylistState> {
  AllcategorylistCubit() : super(AllcategorylistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getAllCategoryist() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(AllcategorylistState.initial());
    final result = await repo.getAllCategoryist(""

    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchAllCategoryist(String filter) async {

    emit(AllcategorylistState.initial());
    final result = await repo.getAllCategoryist( "name="+filter.toString(),);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type,int ? id}) async {
    final result = await repo.getAllCategoryist(next,);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type,int ? id}) async {
    // print(previous);
    final result = await repo.getAllCategoryist(prev,);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(AllcategorylistState.initial());
    getAllCategoryist();
  }
}
