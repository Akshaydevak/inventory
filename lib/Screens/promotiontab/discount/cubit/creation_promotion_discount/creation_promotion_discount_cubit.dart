import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'creation_promotion_discount_state.dart';
part 'creation_promotion_discount_cubit.freezed.dart';

class CreationPromotionDiscountCubit extends Cubit<CreationPromotionDiscountState> {
  CreationPromotionDiscountCubit() : super(CreationPromotionDiscountState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future postCreatePromtionDiscount(PromotionDiscountCreationModel model) async {
    // emit(_Loading());
    // print("creation");
    final result = await repo.postCreatePromtionDiscount(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future getPromotionDiscountPatch(int? id, PromotionDiscountCreationModel model) async {
    print("sunithi" + id.toString());
    emit(CreationPromotionDiscountState.initial());
    final result = await repo.getPromotionDiscountPatch(model, id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

}
