import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'stockpartitionpost_state.dart';

part 'stockpartitionpost_cubit.freezed.dart';

class StockpartitionpostCubit extends Cubit<StockpartitionpostState> {
  StockpartitionpostCubit() : super(StockpartitionpostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postStockPartion(String? name,String? description) async {

    final result = await repo.postStockPartion(
     name,description
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
