part of 'division_configuration_cubit.dart';

@freezed
class DivisionConfigurationState with _$DivisionConfigurationState {
  const factory DivisionConfigurationState.initial() = _Initial;
  const factory DivisionConfigurationState.loading() = _Loading;
  const factory DivisionConfigurationState.error() = _Error1;
  const factory DivisionConfigurationState.success(DoubleResponse data) =
      _Success;
}
