import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';

part 'linkeditemlistread_state.dart';
part 'linkeditemlistread_cubit.freezed.dart';

class LinkeditemlistreadCubit extends Cubit<LinkeditemlistreadState> {
  LinkeditemlistreadCubit() : super(LinkeditemlistreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getLinkedItemListRead(
    String? code,
  ) async {
    final result = await repo.getLinkedItemListRead(code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
