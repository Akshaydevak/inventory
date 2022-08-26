import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/baseuomcreation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'readbaseuom_state.dart';
part 'readbaseuom_cubit.freezed.dart';

class ReadbaseuomCubit extends Cubit<ReadbaseuomState> {
  ReadbaseuomCubit() : super(ReadbaseuomState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getBaseUomRead(
    int? id,
  ) async {
    final result = await repo.getBaseUomRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
