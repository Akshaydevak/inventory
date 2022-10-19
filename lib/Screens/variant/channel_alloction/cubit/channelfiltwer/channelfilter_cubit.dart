import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'channelfilter_state.dart';
part 'channelfilter_cubit.freezed.dart';

class ChannelfilterCubit extends Cubit<ChannelfilterState> {
  ChannelfilterCubit() : super(ChannelfilterState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getChannelFilterList(List<String> code, String id, String option) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ChannelfilterState.initial());
    final result = await repo.getChannelFilterList(code, id, option);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }
  //
  // Future searchVariantList(String filter) async {
  //   emit(ChannelfilterState.initial());
  //   final result = await repo.getChannelFilterList(filter, "","");
  //   result.fold((l) => emit(_Error()), (r) {
  //     next = r.nextPage;
  //     prev = r.previousPage;
  //     // items = r.data;
  //
  //     emit(_Success(r));
  //   });
  // }

  Future nextslotSectionPageList(List<String> code, String id, String option) async {
    final result = await repo.getChannelFilterList(code, id, option);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList(
     ) async {
    // print(previous);
    final result = await repo.getChannelFilterList([], "", "");
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ChannelfilterState.initial());
    getChannelFilterList([], "", "");
  }
}
