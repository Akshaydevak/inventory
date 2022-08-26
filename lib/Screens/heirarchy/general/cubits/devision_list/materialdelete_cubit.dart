import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'materialdelete_state.dart';
part 'materialdelete_cubit.freezed.dart';

class MaterialdeleteCubit extends Cubit<MaterialdeleteState> {
  MaterialdeleteCubit() : super(MaterialdeleteState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future materialDelete(int? id,String type) async {
    print("akkkk");
    final result = await repo.materialDelete(id,type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
