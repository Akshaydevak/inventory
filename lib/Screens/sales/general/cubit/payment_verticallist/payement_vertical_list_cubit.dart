import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'payement_vertical_list_state.dart';
part 'payement_vertical_list_cubit.freezed.dart';

class PayementVerticalListCubit extends Cubit<PayementVerticalListState> {
  PayementVerticalListCubit() : super(PayementVerticalListState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;

  Future getSalePaymentVerticalList() async {
    emit(PayementVerticalListState.initial());
    final result = await repo.getSalePaymentVerticalList("");
    print(result);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

  Future getSearchCustomerList(String filter) async {
    emit(PayementVerticalListState.initial());
    final result = await repo.getSalePaymentVerticalList("name" + filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    emit(PayementVerticalListState.initial());
    final result = await repo.getSalePaymentVerticalList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    emit(PayementVerticalListState.initial());
    // print(previous);
    final result = await repo.getSalePaymentVerticalList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }
  Future refresh() async {
    emit(PayementVerticalListState.initial());
    getSalePaymentVerticalList();
  }
}
