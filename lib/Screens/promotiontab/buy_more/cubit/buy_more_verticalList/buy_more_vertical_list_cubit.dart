import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'buy_more_vertical_list_state.dart';
part 'buy_more_vertical_list_cubit.freezed.dart';

class BuyMoreVerticalListCubit extends Cubit<BuyMoreVerticalListState> {
  BuyMoreVerticalListCubit() : super(BuyMoreVerticalListState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  String? prev;
  String? next;
  Future getBuyMoreVerticalList({String? type }) async {
    next = null;
    prev = null;
    print("enterd");
    emit(BuyMoreVerticalListState.initial());
    final result = await repo.getBuyMoreVerticalList(
        null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchBuyMoreVerticalList(String filter) async {
    emit(BuyMoreVerticalListState.initial());
    final result = await repo.getBuyMoreVerticalList("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getBuyMoreVerticalList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getBuyMoreVerticalList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(BuyMoreVerticalListState.initial());
    getBuyMoreVerticalList();
  }
}
