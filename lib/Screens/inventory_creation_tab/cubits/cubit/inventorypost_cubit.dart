import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/inventory_creation_tab/cubits/cubit/inventoryPostModel.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'inventorypost_state.dart';
part 'inventorypost_cubit.freezed.dart';

class InventorypostCubit extends Cubit<InventorypostState> {
  InventorypostCubit() : super(InventorypostState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  Future postInventory(InventoryPostModel model) async {
    emit(_Loading());

    final result = await repo.postInventory(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
