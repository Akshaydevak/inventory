import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';

part 'ordertype_state.dart';
part 'ordertype_cubit.freezed.dart';

class OrdertypeCubit extends Cubit<OrdertypeState> {
  final InventoryRepository _repos = InventoryRepositoryImpl();
  OrdertypeCubit() : super(OrdertypeState.initial());
  Future getRequestFormOrdertype() async {
    final result = await _repos.getRequestFormOrdertype();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
