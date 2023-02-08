import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'de_activate_offer_post_state.dart';
part 'de_activate_offer_post_cubit.freezed.dart';

class DeActivateOfferPostCubit extends Cubit<DeActivateOfferPostState> {
  DeActivateOfferPostCubit() : super(DeActivateOfferPostState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future postCreatativeVariant(List<VariantModel> idList) async {

    print("post data");
    final result = await repo.postCreatativeVariant(idList);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
