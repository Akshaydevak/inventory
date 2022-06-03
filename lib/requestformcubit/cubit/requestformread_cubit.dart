import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/purchase_order_read.dart';

part 'requestformread_state.dart';
part 'requestformread_cubit.freezed.dart';

class RequestformreadCubit extends Cubit<RequestformreadState> {
  RequestformreadCubit() : super(RequestformreadState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future getRequestFormRead(int id) async {
    print("idddidd" + id.toString());
    final result = await _repos.getRequestFormRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
