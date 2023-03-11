import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'promotion_coupon_vertical_list_state.dart';
part 'promotion_coupon_vertical_list_cubit.freezed.dart';

class PromotionCouponVerticalListCubit extends Cubit<PromotionCouponVerticalListState> {
  PromotionCouponVerticalListCubit() : super(PromotionCouponVerticalListState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  String? prev;
  String? next;
  Future getCouPenVerticalList({String? type }) async {
    next = null;
    prev = null;
    print("enterd");
    emit(PromotionCouponVerticalListState.initial());
    final result = await repo.getCouPenVerticalList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchCouponVerticalList(String filter) async {
    emit(PromotionCouponVerticalListState.initial());
    final result = await repo.getCouPenVerticalList("name="+filter);
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
    final result = await repo.getCouPenVerticalList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(PromotionCouponVerticalListState.initial());
    getCouPenVerticalList();
  }
}
