import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:meta/meta.dart';

part 'read_offer_period_state.dart';
part 'read_offer_period_cubit.freezed.dart';

class ReadOfferPeriodCubit extends Cubit<ReadOfferPeriodState> {
  ReadOfferPeriodCubit() : super(ReadOfferPeriodState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getOfferPeriodRead(int id) async {
    emit(ReadOfferPeriodState.initial());
    final result = await repo.getOfferPeriodRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
