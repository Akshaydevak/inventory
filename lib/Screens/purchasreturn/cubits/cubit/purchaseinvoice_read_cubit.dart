import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'purchaseinvoice_read_state.dart';
part 'purchaseinvoice_read_cubit.freezed.dart';

class PurchaseinvoiceReadCubit extends Cubit<PurchaseinvoiceReadState> {
  PurchaseinvoiceReadCubit() : super(PurchaseinvoiceReadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getGeneralInvoiceRead(int? id) async {
    emit(PurchaseinvoiceReadState.initial());
    print("idddidd" + id.toString());
    final result = await repo.getGeneralInvoiceRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
