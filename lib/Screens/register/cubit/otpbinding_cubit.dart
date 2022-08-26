import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'otpbinding_state.dart';
part 'otpbinding_cubit.freezed.dart';

class OtpbindingCubit extends Cubit<OtpbindingState> {
  OtpbindingCubit() : super(OtpbindingState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future otpReg(String email, String mobile,String key, String cratedCode) async {
    emit(_Loading());
    final result = await repo.otpReg(email, mobile,key, cratedCode);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
