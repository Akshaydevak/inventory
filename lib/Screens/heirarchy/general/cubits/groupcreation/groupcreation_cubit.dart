import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/creatematerial.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'groupcreation_state.dart';
part 'groupcreation_cubit.freezed.dart';

class GroupcreationCubit extends Cubit<GroupcreationState> {
  GroupcreationCubit() : super(GroupcreationState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateGroup(MaterialCreationtModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateGroup(
      model,
    );
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postGroupPatch(
    int? id,
    MaterialCreationtModel model,
  ) async {
    final result = await repo.postGroupPatch(
      model,
      id,
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
