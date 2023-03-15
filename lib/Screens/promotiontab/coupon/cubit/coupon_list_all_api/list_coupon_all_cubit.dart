import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';
import 'package:meta/meta.dart';

part 'list_coupon_all_state.dart';
part 'list_coupon_all_cubit.freezed.dart';

class ListCouponAllCubit extends Cubit<ListCouponAllState> {
  ListCouponAllCubit() : super(ListCouponAllState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getListAllCouponApi({String? type}) async {
    emit(ListCouponAllState.initial());
    final result = await repo.getListAllCouponApi(type:type);
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
