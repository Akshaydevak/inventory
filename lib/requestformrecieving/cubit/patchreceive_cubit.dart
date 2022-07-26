import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'patchreceive_state.dart';
part 'patchreceive_cubit.freezed.dart';

class PatchreceiveCubit extends Cubit<PatchreceiveState> {
  PatchreceiveCubit() : super(PatchreceiveState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future requestFormReceivingPatch(int? id, RequestReceivingPatch model) async {
    final result = await _repos.requestFormReceivingPatch(id, model);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
