import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/buy_more/model/create_model.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'buy_more_creation_state.dart';
part 'buy_more_creation_cubit.freezed.dart';




class BuyMoreCreationCubit extends Cubit<BuyMoreCreationState> {
  BuyMoreCreationCubit() : super(BuyMoreCreationState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future postCreatePromtionBuyMore(PromotionBuyMoreCreationModel model) async {
    // emit(_Loading());
    // print("creation");
    final result = await repo.postCreatePromtionBuyMore(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }


  Future buyMorePromotionSalePatch(int? id, PromotionBuyMoreCreationModel model) async {
    print("sunithi" + id.toString());
    emit(BuyMoreCreationState.initial());
    final result = await repo.buyMorePromotionSalePatch(model, id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
