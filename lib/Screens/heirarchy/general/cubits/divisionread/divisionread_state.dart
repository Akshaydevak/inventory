part of 'divisionread_cubit.dart';

@freezed
class DivisionreadState with _$DivisionreadState {
  const factory DivisionreadState.initial() = _Initial;
  const factory DivisionreadState.loading() = _Loading;
  const factory DivisionreadState.error() = _Error;
  const factory DivisionreadState.success(DevisionReadModel data) = _Success;
}
