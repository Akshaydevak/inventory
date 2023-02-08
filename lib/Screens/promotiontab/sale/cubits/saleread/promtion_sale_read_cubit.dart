import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:meta/meta.dart';

part 'promtion_sale_read_state.dart';
part 'promtion_sale_read_cubit.freezed.dart';

class PromtionSaleReadCubit extends Cubit<PromtionSaleReadState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  PromtionSaleReadCubit() : super(PromtionSaleReadState.initial());
  Future getPromotionSaleRead(int id) async {
    emit(PromtionSaleReadState.initial());
    print("reead");
    final result = await repo.getPromotionSaleRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
