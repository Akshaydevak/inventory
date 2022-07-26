import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'vertiacal_state.dart';
part 'vertiacal_cubit.freezed.dart';

class VertiacalCubit extends Cubit<VertiacalState> {
  VertiacalCubit() : super(VertiacalState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getGeneralVertical() async {
    final result = await repo.getGeneralVertical();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

  Future getSearch(
    String code,
  ) async {
    final result = await repo.getSearch(
      code,
    );
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
