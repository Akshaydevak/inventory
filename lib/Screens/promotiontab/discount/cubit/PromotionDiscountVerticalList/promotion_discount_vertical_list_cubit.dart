import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'promotion_discount_vertical_list_state.dart';
part 'promotion_discount_vertical_list_cubit.freezed.dart';

class PromotionDiscountVerticalListCubit extends Cubit<PromotionDiscountVerticalListState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  PromotionDiscountVerticalListCubit() : super(PromotionDiscountVerticalListState.initial());
  String? prev;
  String? next;
  Future getPromotionDiscountVerticalList() async {
    next = null;
    prev = null;
    print("enterd");
    emit( PromotionDiscountVerticalListState.initial());
    final result = await repo.getPromotionDiscountVerticalList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchPromotionList(String filter) async {
    emit( PromotionDiscountVerticalListState.initial());
    final result = await repo.getPromotionDiscountVerticalList("name="+filter.toString());
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getPromotionDiscountVerticalList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getPromotionSaleVerticalListt(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit( PromotionDiscountVerticalListState.initial());
    getPromotionDiscountVerticalList();
  }
}
