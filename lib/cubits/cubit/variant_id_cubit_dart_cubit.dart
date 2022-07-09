import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/purchase_order_table_model.dart';
import 'package:inventory/model/variantid.dart';

part 'variant_id_cubit_dart_state.dart';
part 'variant_id_cubit_dart_cubit.freezed.dart';

class VariantIdCubitDartCubit extends Cubit<VariantIdCubitDartState> {
  VariantIdCubitDartCubit() : super(VariantIdCubitDartState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  Future getVariantId({String? vendorId,String? inventory=""}) async {
    print("in"+inventory.toString());
    final result = await repo.getVariantId(vendorId:vendorId,inventory: inventory );
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
