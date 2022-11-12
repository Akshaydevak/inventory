import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../widgets/responseutils.dart';
import '../../../../purchasreturn/pages/repo.dart';

part 'salesgeneralvertical_state.dart';
part 'salesgeneralvertical_cubit.freezed.dart';

class SalesgeneralverticalCubit extends Cubit<SalesgeneralverticalState> {
  SalesgeneralverticalCubit() : super(SalesgeneralverticalState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getSalesGeneralVertical() async {
    next = null;
    prev = null;
    print("batista");
    final result = await repo.getSalesGeneralVertical();
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }

    );
  }

  Future getSalesSearch(
      String code,
      ) async {
    final result = await repo.getSalesSearch(
    "code="+  code,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }

    );
  }


  Future nextslotSectionPageList() async {
    final result = await repo.getSalesSearch(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getSalesSearch(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(SalesgeneralverticalState.initial());
    getSalesGeneralVertical();
  }
}
