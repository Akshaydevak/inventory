// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
// import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';
//
// part 'linked_itemcreation_state.dart';
// part 'linked_itemcreation_cubit.freezed.dart';
//
//
//
// class LinkedItemcreationCubit extends Cubit<LinkedItemcreationState> {
//   LinkedItemcreationCubit() : super(LinkedItemcreationState.initial());
//   final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
//   Future postLinkedItem(
//       LinkedItemPostModel model
//
//       ) async {
//
//     final result = await repo.postLinkedItem(
//       model,
//
//     );
//     result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
//   }
// }
