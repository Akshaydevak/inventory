import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variantpost.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'createlinkeditem_state.dart';
part 'createlinkeditem_cubit.freezed.dart';

class CreatelinkeditemCubit extends Cubit<CreatelinkeditemState> {
  CreatelinkeditemCubit() : super(CreatelinkeditemState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postLinkedItem(LinkedItemPostModel model) async {
    final result = await repo.postLinkedItem(
      model,
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future patchLinkedItem(
      int? id,
      LinkedItemPostModel model,
      ) async {
    print(id);
    final result = await repo.patchLinkedItem(
      model,
      id,
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
