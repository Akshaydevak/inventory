import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';

part 'orderedperson_state.dart';
part 'orderedperson_cubit.freezed.dart';

class OrderedpersonCubit extends Cubit<OrderedpersonState> {
  OrderedpersonCubit() : super(OrderedpersonState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  Future getOrderedPerson([String? inventory = ""]) async {
    print("orderedPerson" );
    final result = await repo.getOrderedPerson();
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
