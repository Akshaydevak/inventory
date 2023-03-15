import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'promotion_sale_deactivate_state.dart';
part 'promotion_sale_deactivate_cubit.freezed.dart';

class PromotionSaleDeactivateCubit extends Cubit<PromotionSaleDeactivateState> {
  PromotionSaleDeactivateCubit() : super(PromotionSaleDeactivateState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getVariantDeactivate(int type,String ? typeData, List<int?>idList,{bool? isCoupon}) async {
    emit(PromotionSaleDeactivateState.initial());
    print("reead");
    final result = await repo.getVariantDeactivate(type,typeData,idList,isCoupon:isCoupon);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
