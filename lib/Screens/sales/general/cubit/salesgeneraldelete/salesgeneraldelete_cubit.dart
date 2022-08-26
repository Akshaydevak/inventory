import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'salesgeneraldelete_state.dart';
part 'salesgeneraldelete_cubit.freezed.dart';

class SalesgeneraldeleteCubit extends Cubit<SalesgeneraldeleteState> {
  SalesgeneraldeleteCubit() : super(SalesgeneraldeleteState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future salesGeneralDelete(int? id) async {
    print("akkkk");
    final result = await repo.salesGeneralDelete(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
