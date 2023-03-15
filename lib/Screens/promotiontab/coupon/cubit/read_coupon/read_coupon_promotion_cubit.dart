import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/coupon/model/crreateCouponModel.dart';
import 'package:meta/meta.dart';

part 'read_coupon_promotion_state.dart';
part 'read_coupon_promotion_cubit.freezed.dart';

class ReadCouponPromotionCubit extends Cubit<ReadCouponPromotionState> {
  ReadCouponPromotionCubit() : super(ReadCouponPromotionState.initial());

  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  Future getPromotionCouponRead(int id) async {
    emit(ReadCouponPromotionState.initial());
    print("reead");
    final result = await repo.getPromotionCouponRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
