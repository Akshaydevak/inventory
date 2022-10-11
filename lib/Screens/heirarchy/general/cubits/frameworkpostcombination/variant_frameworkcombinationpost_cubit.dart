import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'variant_frameworkcombinationpost_state.dart';
part 'variant_frameworkcombinationpost_cubit.freezed.dart';

class VariantFrameworkcombinationpostCubit
    extends Cubit<VariantFrameworkcombinationpostState> {
  VariantFrameworkcombinationpostCubit()
      : super(VariantFrameworkcombinationpostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCombinationFrameWork(
      {String? itemCode,
      String? variantCode,
      String? uomCode,
      List<List<Map<String, dynamic>>>? variantlist}) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCombinationFrameWork(
        itemCode: itemCode,
        variantCode: variantCode,
        uomCode: uomCode,
        variantlist: variantlist);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
