import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:meta/meta.dart';

part 'read_offer_group_state.dart';
part 'read_offer_group_cubit.freezed.dart';

class ReadOfferGroupCubit extends Cubit<ReadOfferGroupState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  ReadOfferGroupCubit() : super(ReadOfferGroupState.initial());
  Future getOfferGroupRead(int id) async {
    emit(ReadOfferGroupState.initial());
    print("reead");
    final result = await repo.getOfferGroupRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
