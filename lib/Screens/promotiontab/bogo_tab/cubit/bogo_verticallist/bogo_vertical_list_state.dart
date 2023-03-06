part of 'bogo_vertical_list_cubit.dart';


@freezed
class BogoVerticalListState with _$BogoVerticalListState {
  const factory BogoVerticalListState.initial() = _Initial;
  const factory BogoVerticalListState.success(PaginatedResponse data) = _Success;
  const factory BogoVerticalListState.error() = _Error;
}
