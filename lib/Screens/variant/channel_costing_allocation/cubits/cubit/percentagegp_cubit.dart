import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';

part 'percentagegp_state.dart';
part 'percentagegp_cubit.freezed.dart';

class PercentagegpCubit extends Cubit<PercentagegpState> {
  PercentagegpCubit() : super(PercentagegpState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future percentageGp(int? id, String? gpType) async {
    emit(_Loading());
    print("assa");
    final result = await repo.percentageGp(id, gpType);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
