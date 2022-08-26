import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/invoice/model/invoicepostmodel.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'invoicepost_state.dart';
part 'invoicepost_cubit.freezed.dart';

class InvoicepostCubit extends Cubit<InvoicepostState> {
  InvoicepostCubit() : super(InvoicepostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postSalesInvoice(SalesReturnInvoicePostModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postSalesInvoice(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
