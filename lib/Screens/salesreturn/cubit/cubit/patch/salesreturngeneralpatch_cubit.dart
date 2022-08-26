import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'salesreturngeneralpatch_state.dart';
part 'salesreturngeneralpatch_cubit.freezed.dart';

class SalesreturngeneralpatchCubit extends Cubit<SalesreturngeneralpatchState> {
  SalesreturngeneralpatchCubit()
      : super(SalesreturngeneralpatchState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postSalesRequestGeneralPatch(
      int? id, SalesReturnGeneralPostModel model) async {
    print("sunithi" + id.toString());
    final result = await repo.postSalesRequestGeneralPatch(model, id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
