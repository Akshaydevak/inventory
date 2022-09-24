import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'pricinggrouppatch_state.dart';
part 'pricinggrouppatch_cubit.freezed.dart';

class PricinggrouppatchCubit extends Cubit<PricinggrouppatchState> {
  PricinggrouppatchCubit() : super(PricinggrouppatchState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future patchPricingGroupType(PricingGroupListModel model, int? id,
      {int? type}) async {
    emit(_Loading());
    print("assa");
    final result = await repo.patchPricingGroupType(model, id, type: type);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future patchPricingGroup(
    PricingTypeListModel model,
    int? id,
  ) async {
    emit(_Loading());
    print("assa");
    final result = await repo.patchPricingGroup(
      model,
      id,
    );
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
