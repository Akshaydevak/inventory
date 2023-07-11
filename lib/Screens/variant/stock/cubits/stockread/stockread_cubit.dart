import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/stock/models/stock_read.dart';

part 'stockread_state.dart';
part 'stockread_cubit.freezed.dart';

class StockreadCubit extends Cubit<StockreadState> {
  StockreadCubit() : super(StockreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getStockRead(int? id) async {
    emit(StockreadState.initial());
    print("idddidd" + id.toString());
    final result = await repo.getStockRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
