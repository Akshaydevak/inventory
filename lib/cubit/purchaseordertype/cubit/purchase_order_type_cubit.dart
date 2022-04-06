import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'purchase_order_type_state.dart';
part 'purchase_order_type_cubit.freezed.dart';

class PurchaseOrderTypeCubit extends Cubit<PurchaseOrderTypeState> {
  final InventoryRepository _repos = InventoryRepositoryImpl();
  PurchaseOrderTypeCubit() : super(PurchaseOrderTypeState.initial());
  Future getPurchaseOrdertype() async {
    final result = await _repos.getPurchaseOrdertype();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}

