import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/creatematerial.dart';
import 'package:inventory/Screens/heirarchy/general/model/materialread.dart';
import 'package:inventory/Screens/heirarchy/general/model/variantframeworkpost.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'materialcraetion_state.dart';
part 'materialcraetion_cubit.freezed.dart';

class MaterialcraetionCubit extends Cubit<MaterialcraetionState> {
  MaterialcraetionCubit() : super(MaterialcraetionState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateMaterial(MaterialCreationtModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateMaterial(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postmaterialPatch(int? id, MaterialReadModel model) async {
    final result = await repo.postmaterialPatch(model, id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postFrameWorkCreate(VariantFrameworkPostModel model) async {
    final result = await repo.postFrameWorkCreate(
      model,
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
