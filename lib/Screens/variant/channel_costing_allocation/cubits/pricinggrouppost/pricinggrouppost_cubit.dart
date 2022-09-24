import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'pricinggrouppost_state.dart';
part 'pricinggrouppost_cubit.freezed.dart';

class PricinggrouppostCubit extends Cubit<PricinggrouppostState> {
  PricinggrouppostCubit() : super(PricinggrouppostState.initial());
    final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
    Future postPricingGroupType(PricingGroupListModel model, {int? type}) async {
      emit(_Loading());
      print("assa");
      final result = await repo.postPricingGroupType(model, type: type);
      print(result);
      result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
    }

  Future postPricingGroup(PricingTypeListModel model, {int? type}) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postPricingGroup(
      model,
    );
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
