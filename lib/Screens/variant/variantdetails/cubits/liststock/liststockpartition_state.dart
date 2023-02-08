part of 'liststockpartition_cubit.dart';


@freezed
class ListstockpartitionState with _$ListstockpartitionState {
  const factory ListstockpartitionState.initial() = _Initial;
  const factory ListstockpartitionState.success(PaginatedResponse data) = _Success;
  const factory ListstockpartitionState.error() = _Error;

}
