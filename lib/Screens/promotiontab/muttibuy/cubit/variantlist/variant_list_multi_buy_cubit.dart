import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'variant_list_multi_buy_state.dart';
part 'variant_list_multi_buy_cubit.freezed.dart';

class VariantListMultiBuyCubit extends Cubit<VariantListMultiBuyState> {
  VariantListMultiBuyCubit() : super(VariantListMultiBuyState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  String? prev;
  String? next;
  Future getMultiBuyVariantList(PromotionVariantPostModel model) async {
    next = null;
    prev = null;
    print("enterd");
    emit(VariantListMultiBuyState.initial());
    final result = await repo.getMultiBuyVariantList(model, ""

    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }



  Future nextslotSectionPageList(PromotionVariantPostModel model) async {
    final result = await repo.getMultiBuyVariantList(model, next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList(PromotionVariantPostModel model) async {
    // print(previous);
    final result = await repo.getMultiBuyVariantList(model, prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh(PromotionVariantPostModel model,) async {
    emit(VariantListMultiBuyState.initial());
    getMultiBuyVariantList(model);
  }

}
