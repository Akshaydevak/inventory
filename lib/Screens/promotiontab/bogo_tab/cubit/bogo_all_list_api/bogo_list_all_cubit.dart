import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:meta/meta.dart';

part 'bogo_list_all_state.dart';
part 'bogo_list_all_cubit.freezed.dart';

class BogoListAllCubit extends Cubit<BogoListAllState> {
  BogoListAllCubit() : super(BogoListAllState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getListAllBogoApi({String? type}) async {
    emit(BogoListAllState.initial());
    final result = await repo.getListAllBogoApi(type:type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
