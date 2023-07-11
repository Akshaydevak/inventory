import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'attributepatchlist_state.dart';
part 'attributepatchlist_cubit.freezed.dart';

class AttributepatchlistCubit extends Cubit<AttributepatchlistState> {
  AttributepatchlistCubit() : super(AttributepatchlistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getAttributePatchList() async {
    emit(AttributepatchlistState.initial());
    final result = await repo.getAttributePatchList("");
    print(result);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
  Future getSearchAttributePatchList(String filter) async {
    emit(AttributepatchlistState.initial());
    final result = await repo.getAttributePatchList("name=" + filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getAttributePatchList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getAttributePatchList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(AttributepatchlistState.initial());
    getAttributePatchList();
  }
}
