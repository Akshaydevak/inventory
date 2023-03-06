import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'bogo_vertical_list_state.dart';
part 'bogo_vertical_list_cubit.freezed.dart';

class BogoVerticalListCubit extends Cubit<BogoVerticalListState> {
  BogoVerticalListCubit() : super(BogoVerticalListState.initial() );
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  String? prev;
  String? next;
  Future getBogoVerticalList({String? type }) async {
    next = null;
    prev = null;
    print("enterd");
    emit(BogoVerticalListState.initial() );
    final result = await repo.getBogoVerticalList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchBogoVerticalList(String filter) async {
    emit(BogoVerticalListState.initial() );
    final result = await repo.getBogoVerticalList("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getBogoVerticalList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getBogoVerticalList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(BogoVerticalListState.initial() );
    getBogoVerticalList();
  }
}
