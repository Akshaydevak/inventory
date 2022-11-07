import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/model/creation_custom_model.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'customcreation_state.dart';
part 'customcreation_cubit.freezed.dart';

class CustomcreationCubit extends Cubit<CustomcreationState> {
  CustomcreationCubit() : super(CustomcreationState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateCustom(CustomCreationtModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateCustom(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future patchCreateCustom(CustomCreationtModel model,int? id) async {
    emit(_Loading());
    print("assa");
    final result = await repo.patchCreateCustom(model,id);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
