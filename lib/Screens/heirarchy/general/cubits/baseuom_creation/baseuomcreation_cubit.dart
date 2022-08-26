import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/baseuomcreation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'baseuomcreation_state.dart';
part 'baseuomcreation_cubit.freezed.dart';

class BaseuomcreationCubit extends Cubit<BaseuomcreationState> {
  BaseuomcreationCubit() : super(BaseuomcreationState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateBaseUom(BaseUomCreationtModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateBaseUom(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postUomPatch(
    int? id,
    BaseUomCreationtModel model,
  ) async {
    final result = await repo.postUomPatch(
      model,
      id,
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
