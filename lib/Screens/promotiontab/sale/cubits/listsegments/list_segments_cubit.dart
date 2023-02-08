import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'list_segments_state.dart';
part 'list_segments_cubit.freezed.dart';

class ListSegmentsCubit extends Cubit<ListSegmentsState> {
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  ListSegmentsCubit() : super(ListSegmentsState.initial());
  String? prev;
  String? next;
  Future getListSegment() async {
    next = null;
    prev = null;
    print("enterd");
    emit(ListSegmentsState.initial());
    final result = await repo.getListSegment(

    "");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchUomList(String filter) async {
    emit(ListSegmentsState.initial());
    final result = await repo.getListSegment(filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getListSegment(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getListSegment(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ListSegmentsState.initial());
    getListSegment();
  }
}
