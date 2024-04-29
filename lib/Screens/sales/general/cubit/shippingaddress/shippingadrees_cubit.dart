import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/general/model/shippinfaddressmodel.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'shippingadrees_state.dart';
part 'shippingadrees_cubit.freezed.dart';

class ShippingadreesCubit extends Cubit<ShippingadreesState> {
  ShippingadreesCubit() : super(ShippingadreesState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getShippingId({String? id}) async {
    emit(ShippingadreesState.initial());
    final result = await repo.getShippingId("",id:id);
    next = null;
    prev = null;
    print(result);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }


    );
  }

  Future getSearchCustomList(String filter,String? id) async {
    emit(ShippingadreesState.initial());
    final result = await repo.getShippingId("name=" + filter,id: id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getShippingId(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getShippingId(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ShippingadreesState.initial());
    getShippingId();
  }
}
