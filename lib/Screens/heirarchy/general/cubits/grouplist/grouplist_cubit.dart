import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'grouplist_state.dart';
part 'grouplist_cubit.freezed.dart';

class GrouplistCubit extends Cubit<GrouplistState> {
  GrouplistCubit() : super(GrouplistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();

  String? prev;
  String? next;
  Future getGroupListList({String ? type}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(GrouplistState.initial());
    final result = await repo.getGroupListList(null,type:type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchGroupList(String filter) async {
    emit(GrouplistState.initial());
    final result = await repo.getGroupListList("name=" + filter);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getGroupListList(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getGroupListList(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(GrouplistState.initial());
    getGroupListList();
  }
}
