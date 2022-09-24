import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingpagecreation.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'costing_creation_state.dart';
part 'costing_creation_cubit.freezed.dart';

class CostingCreationCubit extends Cubit<CostingCreationState> {
  CostingCreationCubit() : super(CostingCreationState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCosting(
    CostingPageCreationPostModel model,
  ) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCosting(
      model,
    );
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future patchCosting(
    CostingPageCreationPostModel model,int? id
  ) async {
    emit(_Loading());
    print("ablllla");
    final result = await repo.patchCosting(
      model,id
    );
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
