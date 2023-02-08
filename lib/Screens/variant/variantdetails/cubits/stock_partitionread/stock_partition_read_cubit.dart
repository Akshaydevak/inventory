import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';
import 'package:meta/meta.dart';

part 'stock_partition_read_state.dart';
part 'stock_partition_read_cubit.freezed.dart';

class StockPartitionReadCubit extends Cubit<StockPartitionReadState> {
  StockPartitionReadCubit() : super( StockPartitionReadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getStockPartitionRead(
      int? id,
      ) async {
    final result = await repo.getStockPartitionRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

}
