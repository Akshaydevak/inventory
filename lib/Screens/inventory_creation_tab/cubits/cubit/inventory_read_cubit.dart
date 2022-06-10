import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/inventory_creation_tab/inventory_read_model.dart';
import 'package:inventory/inventoryrepo.dart';

part 'inventory_read_state.dart';
part 'inventory_read_cubit.freezed.dart';

class InventoryReadCubit extends Cubit<InventoryReadState> {
  InventoryReadCubit() : super(InventoryReadState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future getInventoryRead(int id) async {
    print("idddidd" + id.toString());
    final result = await _repos.getInventoryRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
