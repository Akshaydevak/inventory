import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'variant_list_promotion_state.dart';
part 'variant_list_promotion_cubit.freezed.dart';

class VariantListPromotionCubit extends Cubit<VariantListPromotionState> {
  VariantListPromotionCubit() : super(VariantListPromotionState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  String? prev;
  String? next;
  Future getVariantList(PromotionVariantPostModel model) async {
    next = null;
    prev = null;
    print("enterd");
    emit(VariantListPromotionState.initial());
    final result = await repo.getVariantList(model, ""

    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchVariantList(PromotionVariantPostModel model,
      String? code) async {
    emit(VariantListPromotionState.initial());
    final result = await repo.getVariantList(model, "name="+code.toString());
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList(PromotionVariantPostModel model) async {
    final result = await repo.getVariantList(model, next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList(PromotionVariantPostModel model) async {
    // print(previous);
    final result = await repo.getVariantList(model, prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh(PromotionVariantPostModel model,) async {
    emit(VariantListPromotionState.initial());
    getVariantList(model);
  }

}
