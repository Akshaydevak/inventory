import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'frameworkread_state.dart';
part 'frameworkread_cubit.freezed.dart';

class FrameworkreadCubit extends Cubit<FrameworkreadState> {
  FrameworkreadCubit() : super(FrameworkreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getFrameWorkRead(
    int? id,
  ) async {
    final result = await repo.getFrameWorkRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
