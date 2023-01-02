import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/customizeddata/model/creation_custom_model.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:meta/meta.dart';

part 'messurement_state.dart';
part 'messurement_cubit.freezed.dart';

class MessurementCubit extends Cubit<MessurementState> {
  MessurementCubit() : super(MessurementState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getMessurementRead() async {
    emit(MessurementState.initial());
    final result = await repo.getMessurementRead();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
