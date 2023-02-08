import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'create_offer_group_state.dart';
part 'create_offer_group_cubit.freezed.dart';

class CreateOfferGroupCubit extends Cubit<CreateOfferGroupState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  CreateOfferGroupCubit() : super(CreateOfferGroupState.initial(
  )
  );
  Future postCreateOfferGroup(CreateOfferGroup model) async {
    emit(_Loading());
    print("creation");
    final result = await repo.postCreateOfferGroup(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
