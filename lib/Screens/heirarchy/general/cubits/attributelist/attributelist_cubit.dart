import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'attributelist_state.dart';
part 'attributelist_cubit.freezed.dart';

class AttributelistCubit extends Cubit<AttributelistState> {
  AttributelistCubit() : super(AttributelistState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getAttributeList() async {
    next = null;
    prev = null;
    print("enterd");
    // items = [];
    emit(AttributelistState.initial());
    final result = await repo.getAttributeList(
      null,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    });
  }

  Future searchAttributeist(
    String filter,
  ) async {
    print(filter);
    emit(AttributelistState.initial());
    final result = await repo.getAttributeList(
      filter,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      // items = r.data;

      emit(_Success(r));
    });
  }

  Future nextslotSectionPageList() async {
    final result = await repo.getAttributeList(
      next,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getAttributeList(null);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(AttributelistState.initial());
    getAttributeList();
  }
}
