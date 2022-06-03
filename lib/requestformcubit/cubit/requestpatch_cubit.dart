import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'requestpatch_state.dart';
part 'requestpatch_cubit.freezed.dart';

class RequestpatchCubit extends Cubit<RequestpatchState> {
  RequestpatchCubit() : super(RequestpatchState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future getRequestFormPatch(int? id, PurchaseOrderPost model) async {
    print("sunithi" + id.toString());
    final result = await _repos.getRequestFormPatch(model, id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
