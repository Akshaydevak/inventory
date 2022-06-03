import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaseOrderPostmodel/purchaseOrderPost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'requestformpost_state.dart';
part 'requestformpost_cubit.freezed.dart';

class RequestformpostCubit extends Cubit<RequestformpostState> {
  RequestformpostCubit() : super(RequestformpostState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  Future postRequest(PurchaseOrderPost model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postRequest(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
