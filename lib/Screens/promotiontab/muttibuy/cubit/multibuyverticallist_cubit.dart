import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'multibuyverticallist_state.dart';
part 'multibuyverticallist_cubit.freezed.dart';

class MultibuyverticallistCubit extends Cubit<MultibuyverticallistState> {
  MultibuyverticallistCubit() : super(MultibuyverticallistState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  String? prev;
  String? next;
  Future getMultiBuyVerticalList({String? type }) async {
    next = null;
    prev = null;
    print("enterd");
    emit(MultibuyverticallistState.initial());
    final result = await repo.getMultiBuyVerticalList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }
  Future searchMultiBuyVerticalList(String filter) async {
    emit(MultibuyverticallistState.initial());
    final result = await repo.getMultiBuyVerticalList("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;
      emit(_Success(r));
    });
  }
  Future nextslotSectionPageList() async {
    final result = await repo.getMultiBuyVerticalList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }
  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getMultiBuyVerticalList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(MultibuyverticallistState.initial());
    getMultiBuyVerticalList();
  }
}
