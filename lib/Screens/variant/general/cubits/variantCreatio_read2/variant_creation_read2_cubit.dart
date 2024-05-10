import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/general/model/variant_read2_model.dart';

part 'variant_creation_read2_state.dart';
part 'variant_creation_read2_cubit.freezed.dart';

class VariantCreationRead2Cubit extends Cubit<VariantCreationRead2State> {
  VariantCreationRead2Cubit() : super(VariantCreationRead2State.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getVariantCreationRead2(String? id) async {
    emit(VariantCreationRead2State.initial());
    final result = await repo.getVariantCreationRead2(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
