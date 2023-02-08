import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:meta/meta.dart';

part 'listallsalesapi_state.dart';
part 'listallsalesapi_cubit.freezed.dart';

class ListallsalesapiCubit extends Cubit<ListallsalesapiState> {
  ListallsalesapiCubit() : super(ListallsalesapiState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getListAllSalesApi() async {
    emit(ListallsalesapiState.initial());
    final result = await repo.getListAllSalesApi();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
