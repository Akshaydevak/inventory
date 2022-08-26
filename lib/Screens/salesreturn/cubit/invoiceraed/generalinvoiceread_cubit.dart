import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturninvoiceread.dart';

part 'generalinvoiceread_state.dart';
part 'generalinvoiceread_cubit.freezed.dart';

class GeneralinvoicereadCubit extends Cubit<GeneralinvoicereadState> {
  GeneralinvoicereadCubit() : super(GeneralinvoicereadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getSalesReturnGeneralInvoiceRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getSalesReturnGeneralInvoiceRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

}
