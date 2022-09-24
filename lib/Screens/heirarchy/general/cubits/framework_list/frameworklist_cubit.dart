import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'frameworklist_state.dart';
part 'frameworklist_cubit.freezed.dart';

class FrameworklistCubit extends Cubit<FrameworklistState> {
  FrameworklistCubit() : super(FrameworklistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getFrameWorklist() async {
    final result = await repo.getFrameWorklist();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
