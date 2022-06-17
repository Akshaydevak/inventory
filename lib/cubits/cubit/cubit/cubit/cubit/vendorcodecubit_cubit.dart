import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/variantid.dart';

part 'vendorcodecubit_state.dart';
part 'vendorcodecubit_cubit.freezed.dart';

class VendorcodecubitCubit extends Cubit<VendorcodecubitState> {
  VendorcodecubitCubit() : super(VendorcodecubitState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  Future getVariantCode() async {
    final result = await repo.getVariantCode();
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
