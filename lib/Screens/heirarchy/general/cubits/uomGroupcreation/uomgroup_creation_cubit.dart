import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'uomgroup_creation_state.dart';
part 'uomgroup_creation_cubit.freezed.dart';

class UomgroupCreationCubit extends Cubit<UomgroupCreationState> {
  UomgroupCreationCubit() : super(UomgroupCreationState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateUomGroup(
      String description, String name, String shortName) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateUomGroup(description, name, shortName);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
