import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'payment_pacth_state.dart';
part 'payment_pacth_cubit.freezed.dart';

class PaymentPacthCubit extends Cubit<PaymentPacthState> {
  PaymentPacthCubit() : super(PaymentPacthState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future patchPayment(
      PurchasePaymentPostModel model) async {

    final result = await repo.patchPayment(model);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
