import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/general/model/customidcreation.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'customeridcreation_state.dart';
part 'customeridcreation_cubit.freezed.dart';

class CustomeridcreationCubit extends Cubit<CustomeridcreationState> {
  CustomeridcreationCubit() : super(CustomeridcreationState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCustomerIdCreation(CustomerIdCreation2Model model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCustomerIdCreation(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
