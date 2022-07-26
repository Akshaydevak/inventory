import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/purchase_order_read.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'purchaseorderdelete_state.dart';
part 'purchaseorderdelete_cubit.freezed.dart';

class PurchaseorderdeleteCubit extends Cubit<PurchaseorderdeleteState> {
  PurchaseorderdeleteCubit() : super(PurchaseorderdeleteState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future generalPurchaseDelet(int? id) async {
    print("akkkk");
    final result = await _repos.generalPurchaseDelet(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
