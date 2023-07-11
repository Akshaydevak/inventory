import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/stock/models/stocktableread.dart';

part 'stocktableread_state.dart';
part 'stocktableread_cubit.freezed.dart';

class StocktablereadCubit extends Cubit<StocktablereadState> {
  StocktablereadCubit() : super(StocktablereadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getStockTableRead(

    String? code,
  ) async {

    emit(StocktablereadState.initial());
    final result = await repo.getStockTableRead(code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
