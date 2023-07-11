import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/widgets/responseutils.dart';

part 'vertiacal_state.dart';
part 'vertiacal_cubit.freezed.dart';

class VertiacalCubit extends Cubit<VertiacalState> {
  VertiacalCubit() : super(VertiacalState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  String? prev;
  String? next;
  Future getGeneralVertical() async {
    next = null;
    prev = null;
    final result = await repo.getGeneralVertical();
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }


    );
  }

  Future getSearch(
    String code,
  ) async {
    emit(VertiacalState.initial());
    final result = await repo.getSearch(
      "code="+code,
    );
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;
      emit(_Success(r));
    }

    );
  }
  Future nextslotSectionPageList({String? type}) async {
    final result = await repo.getSearch(next);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future previuosslotSectionPageList({String? type}) async {
    // print(previous);
    final result = await repo.getSearch(prev);
    result.fold((l) => emit(_Error()), (r) {
      next = r.nextPage;
      prev = r.previousPage;

      emit(_Success(r));
    });
  }

  Future refresh() async {
    emit(VertiacalState.initial());
    getGeneralVertical();
  }
}
