import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';

part 'purchase_order_type_cubit_dart_state.dart';
part 'purchase_order_type_cubit_dart_cubit.freezed.dart';

class PurchaseOrderTypeCubit extends Cubit<PurchaseOrderTypeCubitDartState> {
  final InventoryRepository _repos = InventoryRepositoryImpl();
  PurchaseOrderTypeCubit() : super(PurchaseOrderTypeCubitDartState.initial());
  Future getPurchaseOrdertype() async {
emit(PurchaseOrderTypeCubitDartState.initial());
    final result = await _repos.getPurchaseOrdertype();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
