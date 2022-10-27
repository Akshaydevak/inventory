import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'costingtype_state.dart';
part 'costingtype_cubit.freezed.dart';

class CostingtypeCubit extends Cubit<CostingtypeState> {
  CostingtypeCubit() : super(CostingtypeState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateCostingType(
      String typeName, String description, String createdBy,
      {int? id}) async {
    emit(_Loading());
    print("assa");
    final result = await repo
        .postCreateCostingType(typeName, description, createdBy, id: id);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postPatchCostingType(int? verticalId, String typeName,
      String description, String createdBy, bool? isActive,
      {int? id}) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postPatchCostingType(
        verticalId, typeName, description, createdBy, isActive,
        id: id);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postPatchCostingCreate(
    int? verticalId,
      int? typeId,
    String typeName,
    String description,
    String createdBy,
    bool? isActive,
  ) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postPatchCostingCreate(
      verticalId,
      typeId,
      typeName,
      description,
      createdBy,
      isActive,
    );
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
