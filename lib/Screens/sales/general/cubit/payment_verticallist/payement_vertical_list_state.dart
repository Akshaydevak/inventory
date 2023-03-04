part of 'payement_vertical_list_cubit.dart';


@freezed
class PayementVerticalListState with _$PayementVerticalListState {
  const factory PayementVerticalListState.initial() = _Initial;
  const factory PayementVerticalListState.success(PaginatedResponse data) =_Success;
  const factory PayementVerticalListState.error() = _Error;
}
