import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'purchaserecievingpatch_state.dart';
part 'purchaserecievingpatch_cubit.freezed.dart';

class PurchaserecievingpatchCubit extends Cubit<PurchaserecievingpatchState> {
  PurchaserecievingpatchCubit() : super(PurchaserecievingpatchState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future getPurchaseRecievePatch(int? id,PurchaseRecievingRead model) async {
    emit(PurchaserecievingpatchState.initial());

    final result = await _repos.getPurchaseRecievePatch(id,model);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
