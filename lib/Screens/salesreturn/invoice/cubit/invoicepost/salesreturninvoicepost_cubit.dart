import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/invoice/model/invoicepostmodel.dart';
import 'package:inventory/Screens/salesreturn/invoice/model/salesreturninvoicepost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'salesreturninvoicepost_state.dart';
part 'salesreturninvoicepost_cubit.freezed.dart';

class SalesreturninvoicepostCubit extends Cubit<SalesreturninvoicepostState> {
  SalesreturninvoicepostCubit() : super(SalesreturninvoicepostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postSalesReturnInvoice(SalesReturnInvoicePostModel2 model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postSalesReturnInvoice(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
