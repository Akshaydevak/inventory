import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/divisionread.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'divisionread_state.dart';
part 'divisionread_cubit.freezed.dart';

class DivisionreadCubit extends Cubit<DivisionreadState> {
  DivisionreadCubit() : super(DivisionreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getDivisionRead(int? id,String type) async {
    emit(DivisionreadState.initial());
    final result = await repo.getDivisionRead(id,type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
