import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'purchaseorderpost_state.dart';
part 'purchaseorderpost_cubit.freezed.dart';

class PurchaseorderpostCubit extends Cubit<PurchaseorderpostState> {
  final InventoryRepository repo = InventoryRepositoryImpl();
  PurchaseorderpostCubit() : super(PurchaseorderpostState.initial());
  Future postPurchase(PurchaseOrderPost model) async {

    emit(_Loading());
    print("akkkkk??????????????????????????????????");
    final result = await repo.postPurchase(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
