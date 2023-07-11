import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/categoryread.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';

part 'categoryread_state.dart';
part 'categoryread_cubit.freezed.dart';

class CategoryreadCubit extends Cubit<CategoryreadState> {
  CategoryreadCubit() : super(CategoryreadState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getCategoryRead(
    int? id,
  ) async {
    emit(CategoryreadState.initial());
    final result = await repo.getCategoryRead(id);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
