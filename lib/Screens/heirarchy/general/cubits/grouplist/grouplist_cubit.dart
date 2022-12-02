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
  Future getGroupListList({String ? type,int ? id}) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(GrouplistState.initial());
    final result = await repo.getGroupListList(null,type:type,id:id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchGroupList(String filter,{String ? type,int ? id}) async {
    emit(GrouplistState.initial());
    final result = await repo.getGroupListList("name=" + filter,type: type,id: id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList({String ? type,int ? id}) async {
    final result = await repo.getGroupListList(next,type: type,id: id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String ? type,int ? id}) async {
    // print(previous);
    final result = await repo.getGroupListList(prev,type: type,id: id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh({String ? type,int ? id}) async {
    emit(GrouplistState.initial());
    getGroupListList(type: type);
  }
}
