import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/materialread.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'materialread_state.dart';
part 'materialread_cubit.freezed.dart';

class MaterialreadCubit extends Cubit<MaterialreadState> {
  MaterialreadCubit() : super(MaterialreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getMaterialRead(int? id) async {
   emit(MaterialreadState.initial());
    final result = await repo.getMaterialRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
