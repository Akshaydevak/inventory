import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'variantsearch_state.dart';
part 'variantsearch_cubit.freezed.dart';

class VariantsearchCubit extends Cubit<VariantsearchState> {
  VariantsearchCubit() : super(VariantsearchState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future searchVariantList({String? type}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(VariantsearchState.initial());
    final result = await repo.searchVariantList(null, type: type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future getVariantSearch(String filter, {String? type}) async {
    emit(VariantsearchState.initial());
    final result = await repo.searchVariantList("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.searchVariantList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.searchVariantList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(VariantsearchState.initial());
    searchVariantList();
  }
}
