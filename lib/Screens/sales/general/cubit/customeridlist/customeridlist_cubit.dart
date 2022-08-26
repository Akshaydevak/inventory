import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/general/model/customeridlistmodel.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'customeridlist_state.dart';
part 'customeridlist_cubit.freezed.dart';

class CustomeridlistCubit extends Cubit<CustomeridlistState> {
  CustomeridlistCubit() : super(CustomeridlistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getCustomerId() async {
    final result = await repo.getCustomerId();
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}