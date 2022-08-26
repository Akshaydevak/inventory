import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/general/model/shippinfaddressmodel.dart';

part 'shippingadrees_state.dart';
part 'shippingadrees_cubit.freezed.dart';

class ShippingadreesCubit extends Cubit<ShippingadreesState> {
  ShippingadreesCubit() : super(ShippingadreesState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getShippingId() async {
    final result = await repo.getShippingId();
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
