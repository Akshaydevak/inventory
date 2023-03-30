import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/discount/cubit/PromotionDiscountVerticalList/promotion_discount_vertical_list_cubit.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'customer_group_promotion_state.dart';
part 'customer_group_promotion_cubit.freezed.dart';

class CustomerGroupPromotionCubit extends Cubit<CustomerGroupPromotionState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  CustomerGroupPromotionCubit() : super(CustomerGroupPromotionState.initial());

  String? prev;
  String? next;
  Future getPromotionCustomerGroupList() async {
    next = null;
    prev = null;
    print("cubit");

    emit( CustomerGroupPromotionState.initial());
    final result = await repo.getPromotionCustomerGroupList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchPromotionCustomerGroup(String filter) async {
    emit( CustomerGroupPromotionState.initial());
    final result = await repo.getPromotionCustomerGroupList("name="+filter.toString());
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getPromotionCustomerGroupList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getPromotionCustomerGroupList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(CustomerGroupPromotionState.initial());
    getPromotionCustomerGroupList();
  }

}
