import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'invoicepost_state.dart';
part 'invoicepost_cubit.freezed.dart';

class InvoicepostCubit extends Cubit<InvoicepostState> {
  InvoicepostCubit() : super(InvoicepostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future invoicePost(PurchaseReturnInvoicePostModel model) async {
    emit(_Loading());

    final result = await repo.invoicePost(model);

    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
