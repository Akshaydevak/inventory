import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'delete_offer_period_state.dart';
part 'delete_offer_period_cubit.freezed.dart';

class DeleteOfferPeriodCubit extends Cubit<DeleteOfferPeriodState> {
  DeleteOfferPeriodCubit() : super( DeleteOfferPeriodState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future deleteOfferPeriod(int? id,{String? type}) async {
    final result = await repo.deleteOfferPeriod(id,type:type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
