import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemread.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'itemread_state.dart';
part 'itemread_cubit.freezed.dart';

class ItemreadCubit extends Cubit<ItemreadState> {
  ItemreadCubit() : super(ItemreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getItemRead(
    int? id,
  ) async {
    final result = await repo.getItemRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
