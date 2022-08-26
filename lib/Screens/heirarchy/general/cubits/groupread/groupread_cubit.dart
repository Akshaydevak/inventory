import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/materialread.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'groupread_state.dart';
part 'groupread_cubit.freezed.dart';

class GroupreadCubit extends Cubit<GroupreadState> {
  GroupreadCubit() : super(GroupreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getGroupRead(
    int? id,
  ) async {
    final result = await repo.getGroupRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
