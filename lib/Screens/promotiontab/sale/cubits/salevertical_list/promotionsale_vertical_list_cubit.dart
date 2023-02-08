import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'promotionsale_vertical_list_state.dart';
part 'promotionsale_vertical_list_cubit.freezed.dart';

class PromotionsaleVerticalListCubit extends Cubit<PromotionsaleVerticalListState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  PromotionsaleVerticalListCubit() : super( PromotionsaleVerticalListState.initial());
  String? prev;
  String? next;
  Future getPromotionSaleVerticalListt() async {
    next = null;
    prev = null;
    print("enterd");
    emit( PromotionsaleVerticalListState.initial());
    final result = await repo.getPromotionSaleVerticalListt(
        null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchPromotionList(String filter) async {
    emit( PromotionsaleVerticalListState.initial());
    final result = await repo.getPromotionSaleVerticalListt("name="+filter.toString());
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getPromotionSaleVerticalListt(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getPromotionSaleVerticalListt(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit( PromotionsaleVerticalListState.initial());
    getPromotionSaleVerticalListt();
  }
}
