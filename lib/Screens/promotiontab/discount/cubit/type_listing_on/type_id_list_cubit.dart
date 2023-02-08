import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/model/purchaseorder.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'type_id_list_state.dart';
part 'type_id_list_cubit.freezed.dart';

class TypeIdListCubit extends Cubit<TypeIdListState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  TypeIdListCubit() : super(TypeIdListState.initial());
  String? prev;
  String? next;

  Future getListTypeId(salesOrderNamePostModel model) async {
    next = null;
    prev = null;
    print("enterd");
    emit(TypeIdListState.initial());
    final result = await repo.getListTypeId(model, ""

    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchSaleAppyingNameList(salesOrderNamePostModel model,
      String? code) async {
    emit(TypeIdListState.initial());
    final result = await repo.getListTypeId(model, "name="+code.toString());
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList(salesOrderNamePostModel model) async {
    final result = await repo.getListTypeId(model, next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList(salesOrderNamePostModel model) async {
    // print(previous);
    final result = await repo.getListTypeId(model, prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh(salesOrderNamePostModel model,) async {
    emit(TypeIdListState.initial());
    getListTypeId(model);
  }
}
