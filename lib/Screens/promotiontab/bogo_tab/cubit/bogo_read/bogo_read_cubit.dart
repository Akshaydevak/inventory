import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/bogo_tab/model/bogo_creation_model.dart';
import 'package:meta/meta.dart';

part 'bogo_read_state.dart';
part 'bogo_read_cubit.freezed.dart';

class BogoReadCubit extends Cubit<BogoReadState> {
  BogoReadCubit() : super(BogoReadState.initial() );
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  Future getPromotionBogoRead(int id) async {
    emit(BogoReadState.initial() );
    print("reead");
    final result = await repo.getPromotionBogoRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
