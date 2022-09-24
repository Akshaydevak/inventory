import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';

part 'readcosting_state.dart';
part 'readcosting_cubit.freezed.dart';

class ReadcostingCubit extends Cubit<ReadcostingState> {
  ReadcostingCubit() : super(ReadcostingState.initial());

  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getCostMethodRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getCostMethodRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
