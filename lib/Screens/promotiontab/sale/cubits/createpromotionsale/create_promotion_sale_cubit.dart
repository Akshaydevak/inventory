import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'create_promotion_sale_state.dart';
part 'create_promotion_sale_cubit.freezed.dart';

class CreatePromotionSaleCubit extends Cubit<CreatePromotionSaleState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  CreatePromotionSaleCubit() : super(CreatePromotionSaleState.initial());
  Future postPromotionSale(PromotionSaleCreateModel model) async {

    print("post data");
    final result = await repo.postPromotionSale(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future getPromotionSalePatch(int? id, PromotionSaleCreateModel model) async {
    print("sunithi" + id.toString());
    // emit(CreatePromotionSaleState.initial());
    final result = await repo.getPromotionSalePatch(model, id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

}
