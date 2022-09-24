import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/channel_costing_allocation/model/costingmethodtypelisting.dart';

part 'readpricingroupread_state.dart';
part 'readpricingroupread_cubit.freezed.dart';

class ReadpricingroupreadCubit extends Cubit<ReadpricingroupreadState> {
  ReadpricingroupreadCubit() : super(ReadpricingroupreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getPricingRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getPricingRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
