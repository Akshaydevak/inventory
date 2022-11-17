part of 'read_division_config_cubit.dart';

@freezed
class ReadDivisionConfigState with _$ReadDivisionConfigState {
  const factory ReadDivisionConfigState.initial() = _Initial;
  const factory ReadDivisionConfigState.error() = _Error;
  const factory ReadDivisionConfigState.success(DivisionReadModel data) =
      _Success;
}
