import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'sale_applying_name_state.dart';
part 'sale_applying_name_cubit.freezed.dart';

class SaleApplyingNameCubit extends Cubit<SaleApplyingNameState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  SaleApplyingNameCubit() : super(SaleApplyingNameState.initial());
  String? prev;
  String? next;

  Future getSaleApplyingName(salesOrderNamePostModel model) async {
    next = null;
    prev = null;
    print("enterd");
    emit(SaleApplyingNameState.initial());
    final result = await repo.getSaleApplyingName(model, ""

    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchSaleAppyingNameList(salesOrderNamePostModel model,
      String? code) async {
    emit(SaleApplyingNameState.initial());
    final result = await repo.getSaleApplyingName(model, "name="+code.toString());
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList(salesOrderNamePostModel model) async {
    final result = await repo.getSaleApplyingName(model, next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList(salesOrderNamePostModel model) async {
    // print(previous);
    final result = await repo.getSaleApplyingName(model, prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh(salesOrderNamePostModel model,) async {
    emit(SaleApplyingNameState.initial());
    getSaleApplyingName(model);
  }
}

