import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';

part 'purchaserecievig_read_state.dart';
part 'purchaserecievig_read_cubit.freezed.dart';

class PurchaserecievigReadCubit extends Cubit<PurchaserecievigReadState> {
  PurchaserecievigReadCubit() : super(PurchaserecievigReadState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future getGeneralPurchaseRecievingRead(int? id) async {
    print("akakakka");
    final result = await _repos.getGeneralPurchaseRecievingRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
