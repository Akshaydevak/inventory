import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/logi/model/inventorylistmodel.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'inventorylist_state.dart';
part 'inventorylist_cubit.freezed.dart';

class InventorylistCubit extends Cubit<InventorylistState> {
  InventorylistCubit() : super(InventorylistState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();

  String? prev;
  String? next;
  Future getInventoryListRead(String code) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(InventorylistState.initial());
    final result = await _repos.getInventoryListRead(code);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchCategoryist(String filter, {String? type}) async {
    print(filter);
    emit(InventorylistState.initial());
    final result = await _repos.getInventoryListRead("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await _repos.getInventoryListRead("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await _repos.getInventoryListRead("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(InventorylistState.initial());
    getInventoryListRead("");
  }
}
