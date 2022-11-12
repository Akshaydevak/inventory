import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'salesreturnvertical_state.dart';
part 'salesreturnvertical_cubit.freezed.dart';

class SalesreturnverticalCubit extends Cubit<SalesreturnverticalState> {
  SalesreturnverticalCubit() : super(SalesreturnverticalState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getSalesReturnGeneralVertical() async {
    next = null;
    prev = null;
    print("batista");
    final result = await repo.getSalesReturnGeneralVertical();
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }
    );
  }

  Future getSalesReturnSearch(
    String code,
  ) async {
    final result = await repo.getSalesReturnSearch(
     "code="+ code,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));});
  }



  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getSalesReturnSearch(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getSalesReturnSearch(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(SalesreturnverticalState.initial());
    getSalesReturnGeneralVertical();
  }
}
