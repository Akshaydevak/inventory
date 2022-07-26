part of 'vertiacal_cubit.dart';

@freezed
class VertiacalState with _$VertiacalState {
  const factory VertiacalState.initial() = _Initial;
  const factory VertiacalState.success(PaginatedResponse data) = _Success;
  const factory VertiacalState.error() = _Error;
}
