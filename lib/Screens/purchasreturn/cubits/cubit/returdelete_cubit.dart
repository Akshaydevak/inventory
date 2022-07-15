import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'returdelete_state.dart';
part 'returdelete_cubit.freezed.dart';

class ReturdeleteCubit extends Cubit<ReturdeleteState> {
  ReturdeleteCubit() : super(ReturdeleteState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future returnGeneralDelete(int? id) async {
    print("akkkk");
    final result = await repo.returnGeneralDelete(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
