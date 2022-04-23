import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'purchase_order_patch_state.dart';
part 'purchase_order_patch_cubit.freezed.dart';

class PurchaseOrderPatchCubit extends Cubit<PurchaseOrderPatchState> {
  PurchaseOrderPatchCubit() : super(PurchaseOrderPatchState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future getGeneralPurchasePatch(int? id,PurchaseOrderPost model) async {
    print("sunithi"+id.toString());
    final result = await _repos.getGeneralPurchasePatch(model,id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
