import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:meta/meta.dart';

import '../model/variantframeworkpost.dart';

part 'attributecreationread_state.dart';
part 'attributecreationread_cubit.freezed.dart';

class AttributecreationreadCubit extends Cubit<AttributecreationreadState> {
  AttributecreationreadCubit() : super(AttributecreationreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getAttributeCreationRead(int? id) async {
    print("idddidd" + id.toString());
    final result = await repo.getAttributeCreationRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
