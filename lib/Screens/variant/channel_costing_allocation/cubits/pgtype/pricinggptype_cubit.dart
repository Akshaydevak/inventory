import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';

part 'pricinggptype_state.dart';
part 'pricinggptype_cubit.freezed.dart';

class PricinggptypeCubit extends Cubit<PricinggptypeState> {
  PricinggptypeCubit() : super(PricinggptypeState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getPricingPgtype() async {
    final result = await repo.getPricingPgtype();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
