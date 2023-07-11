import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'vendordetailslist_state.dart';
part 'vendordetailslist_cubit.freezed.dart';

class VendordetailslistCubit extends Cubit<VendordetailslistState> {
  VendordetailslistCubit() : super(VendordetailslistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getVendorDetailList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(VendordetailslistState.initial());
    final result = await repo.getVendorDetailList("");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future getSearchVendorDetailsList(String filter) async {
    emit(VendordetailslistState.initial());
    final result = await repo.getVendorDetailList("name="+filter.toString());
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getVendorDetailList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getVendorDetailList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(VendordetailslistState.initial());
    getVendorDetailList();
  }
}
