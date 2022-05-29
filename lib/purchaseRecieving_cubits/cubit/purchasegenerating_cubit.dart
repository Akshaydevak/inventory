import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaserecievingmodel/generatemissing.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'purchasegenerating_state.dart';
part 'purchasegenerating_cubit.freezed.dart';

class PurchasegeneratingCubit extends Cubit<PurchasegeneratingState> {
  final InventoryRepository repo = InventoryRepositoryImpl();
  PurchasegeneratingCubit() : super(PurchasegeneratingState.initial());
  Future generatePost(GenerateMissing model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.generatePost(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }


}
