import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';

part 'readlinkeditem_state.dart';
part 'readlinkeditem_cubit.freezed.dart';

class ReadlinkeditemCubit extends Cubit<ReadlinkeditemState> {
  ReadlinkeditemCubit() : super(ReadlinkeditemState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getLinkedItem(
    int? id,
  ) async {
    final result = await repo.getLinkedItem(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
