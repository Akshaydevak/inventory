import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'list_offer_period_state.dart';
part 'list_offer_period_cubit.freezed.dart';

class ListOfferPeriodCubit extends Cubit<ListOfferPeriodState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  ListOfferPeriodCubit() : super(ListOfferPeriodState.initial());




  String? prev;
  String? next;
  Future getOfferPeriodList({String? type }) async {
    next = null;
    prev = null;
    print("enterd");
    emit(ListOfferPeriodState.initial());
    final result = await repo.getOfferPeriodList(
        null,type:type
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchUomList(String filter,{String? type}) async {
    emit(ListOfferPeriodState.initial());
    final result = await repo.getOfferPeriodList(filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getOfferPeriodList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getOfferPeriodList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ListOfferPeriodState.initial());
    getOfferPeriodList();
  }
}
