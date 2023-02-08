import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'patch_offer_group_state.dart';
part 'patch_offer_group_cubit.freezed.dart';

class PatchOfferGroupCubit extends Cubit<PatchOfferGroupState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  PatchOfferGroupCubit() : super(PatchOfferGroupState.initial());
  Future patchOfferGroup(int? id,OfferGroupData model) async {
    emit(_Loading());
    final result = await repo.patchOfferGroup(model,id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
