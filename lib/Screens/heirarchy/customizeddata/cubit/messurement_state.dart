part of 'messurement_cubit.dart';


@freezed
class MessurementState with _$MessurementState {
  const factory MessurementState.initial() = _Initial;
  const factory MessurementState.loading() = _Loading;
  const factory MessurementState.error() = _Error;
  const factory MessurementState.success(ReadMessuremnetModel data) =
  _Success;
}
