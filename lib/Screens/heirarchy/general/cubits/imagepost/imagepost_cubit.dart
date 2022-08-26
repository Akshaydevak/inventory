import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'imagepost_state.dart';
part 'imagepost_cubit.freezed.dart';

class ImagepostCubit extends Cubit<ImagepostState> {
  ImagepostCubit() : super(ImagepostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postImage(String? imageNmae, String ImageEncode) async {
    emit(_Loading());
    final result = await repo.postImage(
      imageNmae,
      ImageEncode,
    );
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
