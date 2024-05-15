import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/salesreturn/invoice/model/salesreturninvoiceread.dart';

part 'salesreturninvoiceread_state.dart';
part 'salesreturninvoiceread_cubit.freezed.dart';

class SalesreturninvoicereadCubit extends Cubit<SalesreturninvoicereadState> {
  SalesreturninvoicereadCubit() : super(SalesreturninvoicereadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getSalesReturnInvoiceRead(int? id) async {
    emit(SalesreturninvoicereadState.initial());
    final result = await repo.getSalesReturnInvoiceRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
