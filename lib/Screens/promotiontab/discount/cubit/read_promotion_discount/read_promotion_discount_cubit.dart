import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:meta/meta.dart';

part 'read_promotion_discount_state.dart';
part 'read_promotion_discount_cubit.freezed.dart';

class ReadPromotionDiscountCubit extends Cubit<ReadPromotionDiscountState> {
  ReadPromotionDiscountCubit() : super(ReadPromotionDiscountState.initial());

  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getPromotionDiscountRead(int id) async {
    emit(ReadPromotionDiscountState.initial());
    print("reead");
    final result = await repo.getPromotionDiscountRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
