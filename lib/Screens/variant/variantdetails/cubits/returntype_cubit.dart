import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';
import 'package:meta/meta.dart';

part 'returntype_state.dart';
part 'returntype_cubit.freezed.dart';

class ReturntypeCubit extends Cubit<ReturntypeState> {
  ReturntypeCubit() : super(ReturntypeState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getReturnType(
      int? id,
      ) async {
    final result = await repo.getReturnType();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
