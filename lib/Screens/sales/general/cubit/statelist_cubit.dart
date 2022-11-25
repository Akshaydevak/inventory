import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:meta/meta.dart';

part 'statelist_state.dart';

part 'statelist_cubit.freezed.dart';

class StatelistCubit extends Cubit<StatelistInitial> {
  StatelistCubit() : super(StatelistInitial.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getStateList(String? code) async {
    final result = await repo.getStateList( code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }


}
