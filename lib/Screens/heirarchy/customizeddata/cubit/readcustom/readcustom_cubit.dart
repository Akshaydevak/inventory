import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/model/creation_custom_model.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'readcustom_state.dart';
part 'readcustom_cubit.freezed.dart';

class ReadcustomCubit extends Cubit<ReadcustomState> {
  ReadcustomCubit() : super(ReadcustomState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getCustomRead(
    int? id,
  ) async {
    final result = await repo.getCustomRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
  Future getReturnRead(

  ) async {
    final result = await repo.getReturnRead();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
