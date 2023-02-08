import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/Data/Repository.dart';
import 'package:inventory/widgets/responseutils.dart';
import 'package:meta/meta.dart';

part 'promotion_image_state.dart';
part 'promotion_image_cubit.freezed.dart';

class PromotionImageCubit extends Cubit<PromotionImageState> {
  PromotionImageCubit() : super(PromotionImageState.initial());
  final InventoryPromotionRepository repo = InventoryPromoRepoIml();
  Future postPromotionImage(String? imageNmae, String ImageEncode,{String? type}) async {

    final result = await repo.postPromotionImage(
      imageNmae,
      ImageEncode,
      type:type,
    );
    result.fold((l) => emit(_Error()), (r) => emit(_Success(r)));
  }
}
