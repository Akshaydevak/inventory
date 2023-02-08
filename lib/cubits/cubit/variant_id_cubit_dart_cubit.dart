import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'variant_id_cubit_dart_state.dart';
part 'variant_id_cubit_dart_cubit.freezed.dart';

class VariantIdCubitDartCubit extends Cubit<VariantIdCubitDartState> {
  VariantIdCubitDartCubit() : super(VariantIdCubitDartState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  String? prev;
  String? next;
  Future getVariantId({String? vendorId,String? inventory=""}) async {
    next = null;
    prev = null;
    emit(VariantIdCubitDartState.initial());
     final result = await repo.getVariantId(code:null,vendorId:vendorId,inventory: inventory );
    print(result);
    result.fold((l) => emit(_Error1()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }

  Future getSearchCustomList(String filter) async {
    emit(VariantIdCubitDartState.initial());
    final result = await repo.getVariantId(code:"");
    result.fold((l) => emit(_Error1()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? vendorId,String? inventory=""}) async {
    final result = await repo.getVariantId(code:next,vendorId:vendorId,inventory: inventory );
    result.fold((l) => emit(_Error1()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? vendorId,String? inventory=""}) async {
    // print(previous);
    final result = await repo.getVariantId(code:prev,vendorId:vendorId,inventory: inventory);
    result.fold((l) => emit(_Error1()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(VariantIdCubitDartState.initial());
    getVariantId();
  }
}
