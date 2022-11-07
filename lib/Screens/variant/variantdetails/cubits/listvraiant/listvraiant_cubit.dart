import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'listvraiant_state.dart';
part 'listvraiant_cubit.freezed.dart';

class ListvraiantCubit extends Cubit<ListvraiantState> {
  ListvraiantCubit() : super(ListvraiantState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getVariantList({String? type}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ListvraiantState.initial());
    final result = await repo.getVariantList(null, type: type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future getSearchVariantList(String filter, {String? type}) async {
    emit(ListvraiantState.initial());
    final result = await repo.getVariantList("name="+filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getVariantList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getVariantList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ListvraiantState.initial());
    getVariantList();
  }
}
