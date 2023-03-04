import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'get_product_by_group_code_state.dart';
part 'get_product_by_group_code_cubit.freezed.dart';

class GetProductByGroupCodeCubit extends Cubit<GetProductByGroupCodeState> {
  GetProductByGroupCodeCubit() : super(GetProductByGroupCodeState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  String? prev;
  String? next;
  Future getVariantGroupCodeList(String? code) async {
    next = null;
    prev = null;
    print("enterd");
    emit(GetProductByGroupCodeState.initial());
    final result = await repo.getVariantGroupCodeList(
      "",customereCode: code ,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchgetVariantGroupCodeList(String filter) async {
    emit(GetProductByGroupCodeState.initial());
    final result = await repo.getVariantGroupCodeList("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList(String? code) async {
    final result = await repo.getVariantGroupCodeList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList(String? code) async {
    // print(previous);
    final result = await repo.getVariantGroupCodeList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(GetProductByGroupCodeState.initial());
    getVariantGroupCodeList("");
  }
}
