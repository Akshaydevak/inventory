import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/stock/models/stock_read.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'stockpost_state.dart';
part 'stockpost_cubit.freezed.dart';

class StockpostCubit extends Cubit<StockpostState> {
  StockpostCubit() : super(StockpostState.initial());

  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postStock( StockData model) async {

    final result = await repo.postStock(model);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
