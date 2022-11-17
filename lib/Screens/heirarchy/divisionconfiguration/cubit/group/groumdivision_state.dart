part of 'groumdivision_cubit.dart';

@freezed
class GroumdivisionState with _$GroumdivisionState {
  const factory GroumdivisionState.initial() = _Initial;
  const factory GroumdivisionState.success(PaginatedResponse data) = _Success;
  const factory GroumdivisionState.error() = _Error;
}
