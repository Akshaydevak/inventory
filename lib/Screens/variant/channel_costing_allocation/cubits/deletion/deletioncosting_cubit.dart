import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'deletioncosting_state.dart';
part 'deletioncosting_cubit.freezed.dart';

class DeletioncostingCubit extends Cubit<DeletioncostingState> {
  DeletioncostingCubit() : super(DeletioncostingState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future CostingDelete(int? id, {String? type}) async {
    print("akkkk"+type.toString());
    final result = await repo.CostingDelete(id,type: type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
