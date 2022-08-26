import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/general/model/sales_general_post.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'shippingaddresscreation_state.dart';
part 'shippingaddresscreation_cubit.freezed.dart';

class ShippingaddresscreationCubit extends Cubit<ShippingaddresscreationState> {
  ShippingaddresscreationCubit()
      : super(ShippingaddresscreationState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postShippinAddress(ShippingAddressCreationModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postShippinAddress(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
