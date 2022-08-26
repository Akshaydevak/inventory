import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/sales/general/model/salesgeneralread.dart';

part 'salesgeneralread_state.dart';
part 'salesgeneralread_cubit.freezed.dart';

class SalesgeneralreadCubit extends Cubit<SalesgeneralreadState> {
  SalesgeneralreadCubit() : super(SalesgeneralreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getSalesGenralRead(int id) async {
    final result = await repo.getSalesGenralRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
