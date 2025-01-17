import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'imagepost_state.dart';
part 'imagepost_cubit.freezed.dart';

class ImagepostCubit extends Cubit<ImagepostState> {
  ImagepostCubit() : super(ImagepostState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postImage(String? imageNmae, String ImageEncode,{String? type}) async {
    emit(_Loading());
    final result = await repo.postImage(
      imageNmae,
      ImageEncode,
      type:type,
    );
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
  Future postImage2(Uint8List? bytes, {String? type}) async {
    emit(_Loading());
    final result = await repo.postImage2(
      bytes,
      type:type,
    );
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }

}
