import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/purchase_current_stock_qty.dart';

part 'purchase_stock_state.dart';
part 'purchase_stock_cubit.freezed.dart';

class PurchaseStockCubit extends Cubit<PurchaseStockState> {
  PurchaseStockCubit() : super(PurchaseStockState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  Future getCurrentStock(int? id) async {
    emit(_Loading());
    print("sssssssssssssssssssssssdd");

    final result = await repo.getCurrentStock(id);
    print("result+" + result.toString());
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
