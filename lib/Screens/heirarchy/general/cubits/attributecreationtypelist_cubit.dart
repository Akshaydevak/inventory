import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:meta/meta.dart';

import '../model/variantframeworkpost.dart';

part 'attributecreationtypelist_state.dart';
part 'attributecreationtypelist_cubit.freezed.dart';

class AttributecreationtypelistCubit extends Cubit<AttributecreationtypelistState> {
  AttributecreationtypelistCubit() : super(AttributecreationtypelistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getAttributeTypeList(

      ) async {
    final result = await repo.getAttributeTypeList();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
