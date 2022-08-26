import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/divisionread.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'uomgroupread_state.dart';
part 'uomgroupread_cubit.freezed.dart';

class UomgroupreadCubit extends Cubit<UomgroupreadState> {
  UomgroupreadCubit() : super(UomgroupreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getUomGroupRead(
    int? id,
  ) async {
    final result = await repo.getUomGroupRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
