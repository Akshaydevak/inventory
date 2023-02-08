import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:meta/meta.dart';

part 'applyingtotype_state.dart';
part 'applyingtotype_cubit.freezed.dart';


class ApplyingtotypeCubit extends Cubit<ApplyingtotypeState> {
  ApplyingtotypeCubit() : super(ApplyingtotypeState.initial());


  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getOfferGroupTypeTo() async {
    emit(ApplyingtotypeState.initial());
    final result = await repo.getOfferGroupTypeTo();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
