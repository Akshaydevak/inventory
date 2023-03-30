import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/coupon/model/crreateCouponModel.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/model/create_model.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'multi_buy_creation_state.dart';
part 'multi_buy_creation_cubit.freezed.dart';

class MultiBuyCreationCubit extends Cubit<MultiBuyCreationState> {
  MultiBuyCreationCubit() : super(MultiBuyCreationState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future postCreatePromtionMultiBuy(PromotionMultiBuyCreationModel model) async {
    // emit(_Loading());
    // print("creation");
    final result = await repo.postCreatePromtionMultiBuy(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }


  Future multiBuyPromotionPatch(int? id, PromotionMultiBuyCreationModel model) async {
    emit(MultiBuyCreationState.initial());
    final result = await repo.multiBuyPromotionPatch(model, id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
