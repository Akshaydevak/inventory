import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../model/purchaseorder.dart';
import '../../../../../models/purchaseordertype/purchaseordertype.dart';
import '../../../../purchasreturn/pages/repo.dart';

part 'sales_state.dart';
part 'sales_cubit.freezed.dart';

class SalesCubit extends Cubit<SalesState> {
  SalesCubit() : super(SalesState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getSalesOrdertype({String? type}) async {
    emit(SalesState.initial());
    final result = await repo.getSalesOrdertype(type:type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
