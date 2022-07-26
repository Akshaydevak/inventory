import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchasereturninvoicemodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'invoice_read_state.dart';
part 'invoice_read_cubit.freezed.dart';

class InvoiceReadCubit extends Cubit<InvoiceReadState> {
  InvoiceReadCubit() : super(InvoiceReadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getInvoiceRead(int id) async {
    print("idddidd" + id.toString());
    final result = await repo.getInvoiceRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
