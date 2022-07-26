import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'generaterequestform_state.dart';
part 'generaterequestform_cubit.freezed.dart';

class GeneraterequestformCubit extends Cubit<GeneraterequestformState> {
  GeneraterequestformCubit() : super(GeneraterequestformState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  Future additionlGenerateRequest(AdditionalGenerateModel model) async {
    print("welcome");
    emit(_Loading());

    final result = await repo.additionlGenerateRequest(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
