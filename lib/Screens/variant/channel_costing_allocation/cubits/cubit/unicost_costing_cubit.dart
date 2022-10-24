import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/purchase_order_read.dart';

part 'unicost_costing_state.dart';
part 'unicost_costing_cubit.freezed.dart';

class UnicostCostingCubit extends Cubit<UnicostCostingState> {
  UnicostCostingCubit() : super(UnicostCostingState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future getUnitcost(int? variantid) async {
    final result = await _repos.getUnitcost(variantid);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
