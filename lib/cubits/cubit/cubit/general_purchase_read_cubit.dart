import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/purchase_order_read.dart';

part 'general_purchase_read_state.dart';
part 'general_purchase_read_cubit.freezed.dart';

class GeneralPurchaseReadCubit extends Cubit<GeneralPurchaseReadState> {
  GeneralPurchaseReadCubit() : super(GeneralPurchaseReadState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future getGeneralPurchaseRead(int id) async {
    emit(GeneralPurchaseReadState.initial());
    print("idddidd"+id.toString());
    final result = await _repos.getGeneralPurchaseRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
