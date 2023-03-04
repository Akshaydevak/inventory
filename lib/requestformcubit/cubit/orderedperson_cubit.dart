import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'orderedperson_state.dart';
part 'orderedperson_cubit.freezed.dart';

class OrderedpersonCubit extends Cubit<OrderedpersonState> {
  OrderedpersonCubit() : super(OrderedpersonState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  String? prev;
  String? next;
  Future getOrderedPerson([String? inventory = ""]) async {
    print("orderedPerson" );
    emit(OrderedpersonState.initial());
    final result = await repo.getOrderedPerson("");
    print(result);
    result.fold((l) => emit(_Error1()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));});
  }
  Future getSearchOrderedPersonList(String filter) async {
    emit(OrderedpersonState.initial());
    final result = await repo.getOrderedPerson("search_key=" + filter);
    result.fold((l) => emit(_Error1()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getOrderedPerson(next);
    result.fold((l) => emit(_Error1()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getOrderedPerson(prev);
    result.fold((l) => emit(_Error1()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(OrderedpersonState.initial());
    getOrderedPerson();
  }

}
