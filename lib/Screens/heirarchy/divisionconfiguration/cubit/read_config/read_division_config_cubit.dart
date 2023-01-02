import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/divisionconfiguration/model/creationmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'read_division_config_state.dart';
part 'read_division_config_cubit.freezed.dart';

class ReadDivisionConfigCubit extends Cubit<ReadDivisionConfigState> {
  ReadDivisionConfigCubit() : super(ReadDivisionConfigState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getDivisionConfigRead(
    int? id,
  ) async {
    emit(ReadDivisionConfigState.initial());
    final result = await repo.getDivisionConfigRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
