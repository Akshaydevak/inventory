import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/salesreturn/model/salesreturnpost.dart';

part 'salesgeneralread_state.dart';
part 'salesgeneralread_cubit.freezed.dart';

class SalesgeneralreadCubit extends Cubit<SalesgeneralreadState> {
  SalesgeneralreadCubit() : super(SalesgeneralreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getSalesReturnGeneralRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getSalesReturnGeneralRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
