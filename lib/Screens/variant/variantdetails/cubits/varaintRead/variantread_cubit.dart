import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';

part 'variantread_state.dart';
part 'variantread_cubit.freezed.dart';

class VariantreadCubit extends Cubit<VariantreadState> {
  VariantreadCubit() : super(VariantreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getVariantRead(
    int? id,
  ) async {
    emit(VariantreadState.initial());
    final result = await repo.getVariantRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
