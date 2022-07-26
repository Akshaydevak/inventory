import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/model/postmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'generalpost_state.dart';
part 'generalpost_cubit.freezed.dart';

class GeneralpostCubit extends Cubit<GeneralpostState> {
  GeneralpostCubit() : super(GeneralpostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postGeneral(PurchaseReturnGeneralPost model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postGeneral(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
