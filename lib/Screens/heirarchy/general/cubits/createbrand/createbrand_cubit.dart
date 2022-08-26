import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandreadmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'createbrand_state.dart';
part 'createbrand_cubit.freezed.dart';

class CreatebrandCubit extends Cubit<CreatebrandState> {
  CreatebrandCubit() : super(CreatebrandState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateBrand(BrandCreationtModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateBrand(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postBrandPatch(int? id, BrandCreationtModel model) async {
    final result = await repo.postBrandPatch(model, id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
