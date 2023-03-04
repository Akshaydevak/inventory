import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'customer_group_state.dart';
part 'customer_group_cubit.freezed.dart';

class CustomerGroupCubit extends Cubit<CustomerGroupState> {
  CustomerGroupCubit() : super(CustomerGroupState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future getCustomGroupRead() async {
    emit(CustomerGroupState.initial());
    print("reead");
    final result = await repo.getCustomGroupRead();
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));

  }
}
