import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:meta/meta.dart';

part 'multibuy_all_list_state.dart';
part 'multibuy_all_list_cubit.freezed.dart';

class MultibuyAllListCubit extends Cubit<MultibuyAllListState> {
  MultibuyAllListCubit() : super(MultibuyAllListState.initial() );
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getListAllMultiBuyApi({String? type}) async {
    emit(MultibuyAllListState.initial() );
    final result = await repo.getListAllMultiBuyApi(type:type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
