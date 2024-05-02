import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';

import 'package:meta/meta.dart';

part 'channel_list_state.dart';
part 'channel_list_cubit.freezed.dart';
//
class ChannelListCubit extends Cubit<ChannelListState> {
  ChannelListCubit() : super(ChannelListState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getChannelList(String? code) async {
    emit(ChannelListState.initial());
    final result = await repo.getChannelList(code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
