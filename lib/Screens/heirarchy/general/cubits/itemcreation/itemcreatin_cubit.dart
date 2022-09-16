import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/baseuomcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemcreation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemread.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'itemcreatin_state.dart';
part 'itemcreatin_cubit.freezed.dart';

class ItemcreatinCubit extends Cubit<ItemcreatinState> {
  ItemcreatinCubit() : super(ItemcreatinState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateItem(ItemCreationModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateItem(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future postItemPatch(
      int? id,
      ItemReadModel model,
      ) async {
    final result = await repo.postItemPatch(
      model,
      id,
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
