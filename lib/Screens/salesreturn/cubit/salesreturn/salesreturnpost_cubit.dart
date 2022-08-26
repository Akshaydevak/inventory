import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'salesreturnpost_state.dart';
part 'salesreturnpost_cubit.freezed.dart';

class SalesreturnpostCubit extends Cubit<SalesreturnpostState> {
  SalesreturnpostCubit() : super(SalesreturnpostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postSalesReturnGeneral(SalesReturnGeneralPostModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postSalesReturnGeneral(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
