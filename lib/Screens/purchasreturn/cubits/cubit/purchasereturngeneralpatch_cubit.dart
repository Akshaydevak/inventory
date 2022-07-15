import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'purchasereturngeneralpatch_state.dart';
part 'purchasereturngeneralpatch_cubit.freezed.dart';

class PurchasereturngeneralpatchCubit
    extends Cubit<PurchasereturngeneralpatchState> {
  PurchasereturngeneralpatchCubit()
      : super(PurchasereturngeneralpatchState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getGeneralFormPatch(int? id, ReturnGeneralRead model) async {
    final result = await repo.getGeneralFormPatch(model, id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
