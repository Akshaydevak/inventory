part of 'liststatic_cubit.dart';

@freezed
class ListstaticState with _$ListstaticState {
  const factory ListstaticState.initial() = _Initial;
  const factory ListstaticState.success(PaginatedResponse data) = _Success;
  const factory ListstaticState.error() = _Error;
}
