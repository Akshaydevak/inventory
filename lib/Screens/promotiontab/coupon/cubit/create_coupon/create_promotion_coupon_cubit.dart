import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/coupon/model/crreateCouponModel.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'create_promotion_coupon_state.dart';
part 'create_promotion_coupon_cubit.freezed.dart';

class CreatePromotionCouponCubit extends Cubit<CreatePromotionCouponState> {
  CreatePromotionCouponCubit() : super(CreatePromotionCouponState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future postCreatePromtionCoupon(PromotionCouponCreationModel model) async {
    // emit(_Loading());
    // print("creation");
    final result = await repo.postCreatePromtionCoupon(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future couponPromotionPatch(int? id, PromotionCouponCreationModel model) async {
    emit(CreatePromotionCouponState.initial());
    final result = await repo.couponPromotionPatch(model, id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
