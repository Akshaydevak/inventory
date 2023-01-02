part of 'attributepatchlist_cubit.dart';


@freezed
class AttributepatchlistState with _$AttributepatchlistState {
  const factory AttributepatchlistState.initial() = _Initial;
  const factory AttributepatchlistState.success(PaginatedResponse data) =
  _Success;
  const factory AttributepatchlistState.error() = _Error;
}
