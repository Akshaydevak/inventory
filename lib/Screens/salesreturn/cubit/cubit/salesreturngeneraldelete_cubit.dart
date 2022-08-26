import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'salesreturngeneraldelete_state.dart';
part 'salesreturngeneraldelete_cubit.freezed.dart';

class SalesreturngeneraldeleteCubit
    extends Cubit<SalesreturngeneraldeleteState> {
  SalesreturngeneraldeleteCubit()
      : super(SalesreturngeneraldeleteState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future salesreturnGeneralDelete(int? id) async {
    print("akkkk");
    final result = await repo.salesreturnGeneralDelete(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
