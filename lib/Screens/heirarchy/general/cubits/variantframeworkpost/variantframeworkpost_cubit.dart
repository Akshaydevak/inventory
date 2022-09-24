import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/frameworklistmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'variantframeworkpost_state.dart';
part 'variantframeworkpost_cubit.freezed.dart';

class VariantframeworkpostCubit extends Cubit<VariantframeworkpostState> {
  VariantframeworkpostCubit() : super(VariantframeworkpostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateFrameWork(
      VariantFrameWorkPostModel model,) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateFrameWork(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future postPatchFrameWork(
      VariantFrameWorkPostModel model,int? id) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postPatchFrameWork(model,id);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
