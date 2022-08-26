import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

import '../../../../../widgets/responseutils.dart';
import '../../model/sales_general_post.dart';

part 'postcubit_state.dart';
part 'postcubit_cubit.freezed.dart';


class PostcubitCubit extends Cubit<PostcubitState> {
  PostcubitCubit() : super(PostcubitState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postSalesGeneral(SalesGeneralPostModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postSalesGeneral(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
