import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../widgets/responseutils.dart';
import '../../../../purchasreturn/pages/repo.dart';
import '../../model/sales_general_post.dart';

part 'salesgeneralpatcvh_state.dart';
part 'salesgeneralpatcvh_cubit.freezed.dart';

class SalesgeneralpatcvhCubit extends Cubit<SalesgeneralpatcvhState> {
  SalesgeneralpatcvhCubit() : super(SalesgeneralpatcvhState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getSalesGeneralPatch(int? id, SalesGeneralPostModel model) async {
    print("sunithi" + id.toString());
    final result = await repo.getSalesGeneralPatch(model, id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
