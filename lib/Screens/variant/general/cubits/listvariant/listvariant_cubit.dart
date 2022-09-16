import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'listvariant_state.dart';
part 'listvariant_cubit.freezed.dart';

class ListvariantCubit extends Cubit<ListvariantState> {
  ListvariantCubit() : super(ListvariantState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getVariantCreationList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ListvariantState.initial());
    final result = await repo.getVariantCreationList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchVariantList(String filter) async {
    emit(ListvariantState.initial());
    final result = await repo.getVariantCreationList(filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getVariantCreationList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getVariantCreationList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ListvariantState.initial());
    getVariantCreationList();
  }
}
