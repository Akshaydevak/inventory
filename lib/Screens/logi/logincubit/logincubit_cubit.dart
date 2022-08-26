import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'logincubit_state.dart';
part 'logincubit_cubit.freezed.dart';

class LogincubitCubit extends Cubit<LogincubitState> {
  LogincubitCubit() : super(LogincubitState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getLogin(String username, String password,String empCode) async {
    emit(_Loading());
    final result = await repo.getLogin(username, password,empCode);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
