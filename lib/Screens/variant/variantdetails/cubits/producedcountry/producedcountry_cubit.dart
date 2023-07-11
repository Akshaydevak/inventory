import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/purchasreturn/pages/repo.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';

part 'producedcountry_state.dart';
part 'producedcountry_cubit.freezed.dart';

class ProducedcountryCubit extends Cubit<ProducedcountryState> {
  ProducedcountryCubit() : super(ProducedcountryState.initial());
  final PurchaseReturnRepoAbstract repo = PurchaseReturnImpl();
  Future getProducedCountry(String? code) async {
  emit(  ProducedcountryState.initial());
    final result = await repo.getProducedCountry(code);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
