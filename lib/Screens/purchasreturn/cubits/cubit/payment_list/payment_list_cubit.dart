import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'payment_list_state.dart';
part 'payment_list_cubit.freezed.dart';

class PaymentListCubit extends Cubit<PaymentListState> {
  PaymentListCubit() : super(PaymentListState.initial());

  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();

  String? prev;
  String? next;
  Future getPaymentList() async {
    next = null;
    prev = null;
    final result = await repo.getPaymentList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }


    );
  }

  Future getPaymentSearch(
      String code,
      ) async {
    final result = await repo.getPaymentList(
      "code="+code,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }

    );
  }
  Future nextslotSectionPageList() async {
    final result = await repo.getPaymentList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getPaymentList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(PaymentListState.initial());
    getPaymentList();
  }
}
