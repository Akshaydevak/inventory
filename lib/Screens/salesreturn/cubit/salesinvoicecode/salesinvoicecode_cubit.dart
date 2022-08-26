import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/general/model/shippinfaddressmodel.dart';

part 'salesinvoicecode_state.dart';
part 'salesinvoicecode_cubit.freezed.dart';

class SalesinvoicecodeCubit extends Cubit<SalesinvoicecodeState> {
  SalesinvoicecodeCubit() : super(SalesinvoicecodeState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getInvoiceCode() async {
    final result = await repo.getInvoiceCode();
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
