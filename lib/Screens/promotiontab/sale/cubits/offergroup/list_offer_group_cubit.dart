import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'list_offer_group_state.dart';
part 'list_offer_group_cubit.freezed.dart';

class ListOfferGroupCubit extends Cubit<ListOfferGroupState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  ListOfferGroupCubit() : super(ListOfferGroupState.initial());
  String? prev;
  String? next;
  Future getOfferGroupList({String? type }) async {
    next = null;
    prev = null;
    print("enterd");
    emit(ListOfferGroupState.initial());
    final result = await repo.getOfferGroupList(
        null,type:type
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchOfferGroupList(String filter,{String? type}) async {
    emit(ListOfferGroupState.initial());
    final result = await repo.getOfferGroupList("title="+filter.toString());
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getOfferGroupList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getOfferGroupList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ListOfferGroupState.initial());
    getOfferGroupList();
  }
}
