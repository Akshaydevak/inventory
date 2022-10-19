import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'qrgenerating_state.dart';
part 'qrgenerating_cubit.freezed.dart';

class QrgeneratingCubit extends Cubit<QrgeneratingState> {
  QrgeneratingCubit() : super(QrgeneratingState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getQrCodeRead(
    int? id,
  ) async {
    final result = await repo.getQrCodeRead(id);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
