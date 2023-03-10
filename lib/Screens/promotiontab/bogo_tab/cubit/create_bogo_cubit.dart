import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/model/bogo_creation_model.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'create_bogo_state.dart';
part 'create_bogo_cubit.freezed.dart';

class CreateBogoCubit extends Cubit<CreateBogoState> {
  CreateBogoCubit() : super(CreateBogoState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  Future postPromtionBogo(PromotionBogoCreationModel model) async {
    // emit(_Loading());
    // print("creation");
    final result = await repo.postPromtionBogo(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future bogoPromotionPatch(int? id, PromotionBogoCreationModel model) async {
    print("sunithi" + id.toString());

    final result = await repo.bogoPromotionPatch(model, id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
