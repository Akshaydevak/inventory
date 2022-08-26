import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/creatematerial.dart';
import 'package:inventory/Screens/heirarchy/general/model/divisionread.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'divisioncreate_state.dart';
part 'divisioncreate_cubit.freezed.dart';

class DivisioncreateCubit extends Cubit<DivisioncreateState> {
  DivisioncreateCubit() : super(DivisioncreateState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateDevision(MaterialCreationtModel model,String type) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateDevision(model,type);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postDivisionPatch(int? id, DevisionReadModel model,String type) async {
    final result = await repo.postDivisionPatch(model, id,type);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
