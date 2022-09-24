import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';

part 'pricingread_state.dart';
part 'pricingread_cubit.freezed.dart';

class PricingreadCubit extends Cubit<PricingreadState> {
  PricingreadCubit() : super(PricingreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getPricingGroupRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getPricingGroupRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
