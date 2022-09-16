import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'channeltypelist_state.dart';
part 'channeltypelist_cubit.freezed.dart';

class ChanneltypelistCubit extends Cubit<ChanneltypelistState> {
  ChanneltypelistCubit() : super(ChanneltypelistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getChannelTypeList(String type) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ChanneltypelistState.initial());
    final result = await repo.getChannelTypeList(null,type);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchVariantList(String filter) async {
    emit(ChanneltypelistState.initial());
    final result = await repo.getChannelTypeList(filter,"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getChannelTypeList(next,"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getChannelTypeList(prev,"");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ChanneltypelistState.initial());
    getChannelTypeList("");
  }
}
