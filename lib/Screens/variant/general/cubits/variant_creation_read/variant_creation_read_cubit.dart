import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/general/model/variant_read_model.dart';

part 'variant_creation_read_state.dart';
part 'variant_creation_read_cubit.freezed.dart';

class VariantCreationReadCubit extends Cubit<VariantCreationReadState> {
  VariantCreationReadCubit() : super(VariantCreationReadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getVariantCreationRead(int? id) async {
    emit(VariantCreationReadState.initial());
    print("idddidd" + id.toString());
    final result = await repo.getVariantCreationRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
