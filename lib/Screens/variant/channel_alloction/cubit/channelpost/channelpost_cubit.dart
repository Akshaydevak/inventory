import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_alloction/model/channelpost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'channelpost_state.dart';
part 'channelpost_cubit.freezed.dart';

class ChannelpostCubit extends Cubit<ChannelpostState> {
  ChannelpostCubit() : super(ChannelpostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postSChannelPosts(ChannelPostModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postSChannelPosts(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
