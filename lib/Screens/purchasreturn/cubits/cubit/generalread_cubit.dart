import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/purchaseinvoice.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'generalread_state.dart';
part 'generalread_cubit.freezed.dart';

class GeneralreadCubit extends Cubit<GeneralreadState> {
  GeneralreadCubit() : super(GeneralreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getGeneralPurchaseReturnRead(int id) async {
    print("idddidd" + id.toString());
    final result = await repo.getGeneralPurchaseReturnRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

}
