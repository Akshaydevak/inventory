import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'variantselection_state.dart';
part 'variantselection_cubit.freezed.dart';

class VariantselectionCubit extends Cubit<VariantselectionState> {
  VariantselectionCubit() : super(VariantselectionState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getVariantSelectionList(int item ) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    // emit(VariantselectionCubit.initial());
    final result = await repo.getVariantSelectionList(null,item);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchDevisionList(String filter,int item) async {

    final result = await repo.getVariantSelectionList(filter,item);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList(int item) async {
    final result = await repo.getVariantSelectionList(next,item);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList(int item) async {
    // print(previous);
    final result = await repo.getVariantSelectionList(prev,item);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh(int item) async {
    // emit(VariantselectionCubit.initial());
    getVariantSelectionList(item);
  }
}
