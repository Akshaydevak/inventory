import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/purchase_order_table_model.dart';

part 'table_details_cubit_dart_state.dart';
part 'table_details_cubit_dart_cubit.freezed.dart';

class TableDetailsCubitDartCubit extends Cubit<TableDetailsCubitDartState> {
  TableDetailsCubitDartCubit() : super(TableDetailsCubitDartState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  Future getTableDetails(int? id) async {
    final result = await repo.getTableDetails(id);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
