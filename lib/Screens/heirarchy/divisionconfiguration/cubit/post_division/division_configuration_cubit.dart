import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/model/creationmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'division_configuration_state.dart';
part 'division_configuration_cubit.freezed.dart';

class DivisionConfigurationCubit extends Cubit<DivisionConfigurationState> {
  DivisionConfigurationCubit() : super(DivisionConfigurationState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateDivisionConfig(DivisionCreationtModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateDivisionConfig(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future patchDivisionConfig(DivisionCreationtModel model, int? id) async {
    emit(_Loading());
    print("assa");
    final result = await repo.patchDivisionConfig(model, id);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
