import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'channel_list_read_state.dart';
part 'channel_list_read_cubit.freezed.dart';

class ChannelListReadCubit extends Cubit<ChannelListReadState> {
  ChannelListReadCubit() : super(ChannelListReadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getChannelList(String? channelType,int? id,) async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(ChannelListReadState.initial());
    final result = await repo.getChannelList(channelType, id);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchChannelList({String? filter}) async {
    emit(ChannelListReadState.initial());
    final result = await repo.getChannelList(filter, null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getChannelList(next, null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList() async {
    // print(previous);
    final result = await repo.getChannelList(prev, null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(ChannelListReadState.initial());
    getChannelList(null, null);
  }
}
