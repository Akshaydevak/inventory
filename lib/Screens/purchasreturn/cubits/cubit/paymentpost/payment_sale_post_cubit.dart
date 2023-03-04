import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/invoicepost.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'payment_sale_post_state.dart';
part 'payment_sale_post_cubit.freezed.dart';

class PaymentSalePostCubit extends Cubit<PaymentSalePostState> {
  PaymentSalePostCubit() : super(PaymentSalePostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postSaleOrderPaymentPost(PurchasePaymentPostModel model) async {
    emit(PaymentSalePostState.initial());
    print("assa");
    final result = await repo.postSaleOrderPaymentPost(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
