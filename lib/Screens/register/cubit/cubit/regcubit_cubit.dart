import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/register/model/register.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'regcubit_state.dart';
part 'regcubit_cubit.freezed.dart';

class RegcubitCubit extends Cubit<RegcubitState> {
  RegcubitCubit() : super(RegcubitState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future signUp(RegisterModel model) async {
    emit(_Loading());
    final result = await repo.signUp(model);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
