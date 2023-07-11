import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'payment_transaction_success_post_state.dart';
part 'payment_transaction_success_post_cubit.freezed.dart';

class PaymentTransactionSuccessPostCubit extends Cubit<PaymentTransactionSuccessPostState> {
  PaymentTransactionSuccessPostCubit() : super(PaymentTransactionSuccessPostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postPaymentTransactionSuccess(int ? invoiceId ,String? paymentMethod,String? paymentCode,int type ) async {
    // emit(_Loading());
    print("assa");
    final result = await repo.postPaymentTransactionSuccess(invoiceId,paymentMethod,paymentCode, type);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
