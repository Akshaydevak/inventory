import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'salesreturnvertical_state.dart';
part 'salesreturnvertical_cubit.freezed.dart';

class SalesreturnverticalCubit extends Cubit<SalesreturnverticalState> {
  SalesreturnverticalCubit() : super(SalesreturnverticalState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getSalesReturnGeneralVertical() async {
    print("batista");
    final result = await repo.getSalesReturnGeneralVertical();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

  Future getSalesReturnSearch(
    String code,
  ) async {
    final result = await repo.getSalesReturnSearch(
      code,
    );
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
