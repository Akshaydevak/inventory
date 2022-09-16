import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpatch.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'variantpost_state.dart';
part 'variantpost_cubit.freezed.dart';

class VariantpostCubit extends Cubit<VariantpostState> {
  VariantpostCubit() : super(VariantpostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postVariant(
    int? id,
    VariantPost model,
  ) async {
    print(id);
    final result = await repo.postVariant(
      model,
      id,
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future patchVariant(
    int? id,
      VariantPatch model,
  ) async {
    print(id);
    final result = await repo.patchVariant(
      model,
      id,
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
