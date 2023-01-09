import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/general/model/customeridlistmodel.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'customeridlist_state.dart';
part 'customeridlist_cubit.freezed.dart';

class CustomeridlistCubit extends Cubit<CustomeridlistState> {
  CustomeridlistCubit() : super(CustomeridlistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getCustomerId() async {
    emit(CustomeridlistState.initial());
    final result = await repo.getCustomerId("");
    print(result);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
  Future getSearchCustomerList(String filter) async {
    emit(CustomeridlistState.initial());
    final result = await repo.getCustomerId("search_key=" + filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    emit(CustomeridlistState.initial());
    final result = await repo.getCustomerId(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    emit(CustomeridlistState.initial());
    // print(previous);
    final result = await repo.getCustomerId(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(CustomeridlistState.initial());
    getCustomerId();
  }

}
