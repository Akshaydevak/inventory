import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/model/variantid.dart';

part 'vendordetails_state.dart';
part 'vendordetails_cubit.freezed.dart';

class VendordetailsCubit extends Cubit<VendordetailsState> {
  VendordetailsCubit() : super(VendordetailsState.initial());
  final InventoryRepository repo = InventoryRepositoryImpl();
  Future getVendorDetails(String? id) async {
    emit(_Loading());
    print("ssssssssssssssssssss");

    final result = await repo.getVendorDetails(id);
    print("result+" + result.toString());
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
