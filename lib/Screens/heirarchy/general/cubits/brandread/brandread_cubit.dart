import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/brandreadmodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'brandread_state.dart';
part 'brandread_cubit.freezed.dart';

class BrandreadCubit extends Cubit<BrandreadState> {
  BrandreadCubit() : super(BrandreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getBrandRead(int? id) async {
    emit(BrandreadState.initial());
    final result = await repo.getBrandRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
