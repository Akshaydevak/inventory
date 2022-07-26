import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/inventoryrepo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'deleterequestform_state.dart';
part 'deleterequestform_cubit.freezed.dart';

class DeleterequestformCubit extends Cubit<DeleterequestformState> {
  DeleterequestformCubit() : super(DeleterequestformState.initial());
  final InventoryRepository _repos = InventoryRepositoryImpl();
  Future requestFormDelete(int? id) async {
    print("akkkk");
    final result = await _repos.requestFormDelete(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
