import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/purchase_order_read.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';

part 'readrequestrecieving_state.dart';
part 'readrequestrecieving_cubit.freezed.dart';

class ReadrequestrecievingCubit extends Cubit<ReadrequestrecievingState> {
  ReadrequestrecievingCubit() : super(ReadrequestrecievingState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future getRequestFormReceivingRead(int id) async {
    print("idddidd" + id.toString());
    final result = await _repos.getRequestFormReceivingRead(id,);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
