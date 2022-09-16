import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

import '../../../../../widgets/responseutils.dart';

part 'listbrand2_state.dart';
part 'listbrand2_cubit.freezed.dart';

class Listbrand2Cubit extends Cubit<Listbrand2State> {
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Listbrand2Cubit() : super(Listbrand2State.initial());
  String? prev;
  String? next;
  Future getSlotSectionPage() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(Listbrand2State.initial());
      final result = await repo.getlistBrand(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchSlotSectionPageList(String filter) async {
    emit(Listbrand2State.initial());
    final result = await repo.getlistBrand(filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getlistBrand(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getlistBrand(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(Listbrand2State.initial());
    getSlotSectionPage();
  }
}
