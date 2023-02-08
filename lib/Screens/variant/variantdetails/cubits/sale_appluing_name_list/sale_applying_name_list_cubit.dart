// import 'package:bloc/bloc.dart';
// import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
// import 'package:meta/meta.dart';
//
// part 'sale_applying_name_list_state.dart';
//
// class SaleApplyingNameListCubit extends Cubit<SaleApplyingNameListState> {
//   SaleApplyingNameListCubit() : super(SaleApplyingNameListInitial());
//   final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
//   Future getSaleAppyingNameList(
//       String? code,
//       ) async {
//     final result = await repo.getSaleAppyingNameList(code);
//     result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
//   }
// }
