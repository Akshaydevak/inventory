import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'purchaseinvoice_state.dart';
part 'purchaseinvoice_cubit.freezed.dart';

class PurchaseinvoiceCubit extends Cubit<PurchaseinvoiceState> {
  PurchaseinvoiceCubit() : super(PurchaseinvoiceState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getPurchaseInvoice() async {
    final result = await repo.getPurchaseInvoice();

    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
