import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';

part 'readcostingtype_state.dart';
part 'readcostingtype_cubit.freezed.dart';

class ReadcostingtypeCubit extends Cubit<ReadcostingtypeState> {
  ReadcostingtypeCubit() : super(ReadcostingtypeState.initial());

  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getCostMethodTypeRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getCostMethodTypeRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
