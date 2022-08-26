import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/categorymodel.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'createcategory_state.dart';
part 'createcategory_cubit.freezed.dart';

class CreatecategoryCubit extends Cubit<CreatecategoryState> {
  CreatecategoryCubit() : super(CreatecategoryState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future postCreateCategory(CategoryCreationtModel model) async {
    emit(_Loading());
    print("assa");
    final result = await repo.postCreateCategory(model);
    print(result);
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }

  Future postcategoryPatch(
    int? id,
    CategoryCreationtModel model,
  ) async {
    final result = await repo.postcategoryPatch(
      model,
      id,
    );
    result.fold((l) => emit(_Error1()), (r) => emit(_Success(r)));
  }
}
