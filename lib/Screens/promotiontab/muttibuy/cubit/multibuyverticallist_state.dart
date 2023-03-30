part of 'multibuyverticallist_cubit.dart';


@freezed
class MultibuyverticallistState with _$MultibuyverticallistState {
  const factory MultibuyverticallistState.initial() = _Initial;
  const factory MultibuyverticallistState.success(PaginatedResponse data) = _Success;
  const factory MultibuyverticallistState.error() = _Error;

}
