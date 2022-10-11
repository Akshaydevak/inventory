import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/models/purchaseordertype/purchaseordertype.dart';

part 'virtualstocktype_state.dart';
part 'virtualstocktype_cubit.freezed.dart';

class VirtualstocktypeCubit extends Cubit<VirtualstocktypeState> {
  VirtualstocktypeCubit() : super(VirtualstocktypeState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getVirtualStiocktype() async {
    final result = await repo.getVirtualStiocktype();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
