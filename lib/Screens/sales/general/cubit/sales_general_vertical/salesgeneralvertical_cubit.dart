import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../widgets/responseutils.dart';
import '../../../../purchasreturn/pages/repo.dart';

part 'salesgeneralvertical_state.dart';
part 'salesgeneralvertical_cubit.freezed.dart';

class SalesgeneralverticalCubit extends Cubit<SalesgeneralverticalState> {
  SalesgeneralverticalCubit() : super(SalesgeneralverticalState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getSalesGeneralVertical() async {
    print("batista");
    final result = await repo.getSalesGeneralVertical();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

  Future getSalesSearch(
      String code,
      ) async {
    final result = await repo.getSalesSearch(
      code,
    );
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
