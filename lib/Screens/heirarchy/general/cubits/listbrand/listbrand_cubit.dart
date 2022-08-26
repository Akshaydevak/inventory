import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/listbrand.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'listbrand_state.dart';
part 'listbrand_cubit.freezed.dart';

class ListbrandCubit extends Cubit<ListbrandState> {
  ListbrandCubit() : super(ListbrandState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getBrandList() async {
    final result = await repo.getBrandList();
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  // Future getBrandSearch(
  //   String code,
  // ) async {
  //   final result = await repo.getBrandSearch(
  //     code,
  //   );
  //   result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  // }
}
