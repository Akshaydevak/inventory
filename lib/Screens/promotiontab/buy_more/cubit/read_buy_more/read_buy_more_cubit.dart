import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/buy_more/model/create_model.dart';
import 'package:meta/meta.dart';

part 'read_buy_more_state.dart';
part 'read_buy_more_cubit.freezed.dart';

class ReadBuyMoreCubit extends Cubit<ReadBuyMoreState> {
  ReadBuyMoreCubit() : super(ReadBuyMoreState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  Future getBuyMoreRead(int id) async {
    emit(ReadBuyMoreState.initial());
    print("reead");
    final result = await repo.getBuyMoreRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
