import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'pricingroupcreate_state.dart';
part 'pricingroupcreate_cubit.freezed.dart';

class PricingroupcreateCubit extends Cubit<PricingroupcreateState> {
  PricingroupcreateCubit() : super(PricingroupcreateState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getPricingGroupList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(PricingroupcreateState.initial());
    final result = await repo.getPricingGroupList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchCostingTypeList(String filter) async {
    emit(PricingroupcreateState.initial());
    final result = await repo.getPricingGroupList(filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getPricingGroupList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getPricingGroupList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(PricingroupcreateState.initial());
    getPricingGroupList();
  }
}
