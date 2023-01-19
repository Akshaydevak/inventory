import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/invoice/model/invoice_read.dart';

part 'invoiceread_state.dart';
part 'invoiceread_cubit.freezed.dart';

class InvoicereadCubit extends Cubit<InvoicereadState> {
  InvoicereadCubit() : super(InvoicereadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getSalesInvoiceRead(int id) async {
    emit(InvoicereadState.initial());
    print("idddidd" + id.toString());
    final result = await repo.getSalesInvoiceRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
