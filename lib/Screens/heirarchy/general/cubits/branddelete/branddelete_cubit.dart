import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'branddelete_state.dart';
part 'branddelete_cubit.freezed.dart';

class BranddeleteCubit extends Cubit<BranddeleteState> {
  BranddeleteCubit() : super(BranddeleteState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future brandDelete(int? id) async {
    print("akkkk");
    final result = await repo.brandDelete(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
