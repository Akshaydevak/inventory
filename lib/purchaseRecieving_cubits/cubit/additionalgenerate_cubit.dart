import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/purchaserecievingmodel/purchaserecieving_read.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'additionalgenerate_state.dart';
part 'additionalgenerate_cubit.freezed.dart';

class AdditionalgenerateCubit extends Cubit<AdditionalgenerateState> {
  final InventoryRepository repo = InventoryRepositoryImpl();
  AdditionalgenerateCubit() : super(AdditionalgenerateState.initial());
  Future additionlGeneratePost(AdditionalGenerateModel model) async {
    emit(_Loading());

    final result = await repo.additionlGeneratePost(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
