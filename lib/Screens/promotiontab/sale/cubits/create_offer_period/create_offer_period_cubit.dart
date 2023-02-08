import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'create_offer_period_state.dart';
part 'create_offer_period_cubit.freezed.dart';

class CreateOfferPeriodCubit extends Cubit<CreateOfferPeriodState> {
  CreateOfferPeriodCubit() : super(CreateOfferPeriodState.initial() );
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future postCreateOfferPeriod(CreateOfferPeriod model) async {
    // emit(_Loading());
    // print("creation");
    final result = await repo.postCreateOfferPeriod(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }


  Future patchOfferPeriod(int? id,ReadOfferPeriod model) async {
    emit(_Loading());
    final result = await repo.patchOfferPeriod(model,id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
