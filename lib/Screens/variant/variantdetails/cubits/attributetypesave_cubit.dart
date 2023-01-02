import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'attributetypesave_state.dart';
part 'attributetypesave_cubit.freezed.dart';

class AttributetypesaveCubit extends Cubit<AttributetypesaveState> {
  AttributetypesaveCubit() : super(AttributetypesaveState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getAttributePost(String? attributeType,String? attributeName,bool? isActive ) async {

    print("assa");
    final result = await repo.getAttributePost(attributeType,attributeName,isActive);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
  Future getAttributePatch(String? attributeType,String? attributeName,bool? isActive,int? id  ) async {

    print("assa");
    final result = await repo.getAttributePatch(attributeType,attributeName,isActive,id);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
