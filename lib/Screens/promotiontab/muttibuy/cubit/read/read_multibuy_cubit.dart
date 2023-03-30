import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/muttibuy/model/create_model.dart';
import 'package:meta/meta.dart';

part 'read_multibuy_state.dart';
part 'read_multibuy_cubit.freezed.dart';

class ReadMultibuyCubit extends Cubit<ReadMultibuyState> {
  ReadMultibuyCubit() : super(ReadMultibuyState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();

  Future getPromotionMultiBuyRead(int id) async {
    emit(ReadMultibuyState.initial());
    print("reead");
    final result = await repo.getPromotionMultiBuyRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
