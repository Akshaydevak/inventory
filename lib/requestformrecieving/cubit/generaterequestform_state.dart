part of 'generaterequestform_cubit.dart';

@freezed
class GeneraterequestformState with _$GeneraterequestformState {
  const factory GeneraterequestformState.initial() = _Initial;
  const factory GeneraterequestformState.loading() = _Loading;
  const factory GeneraterequestformState.error() = _Error1;
  const factory GeneraterequestformState.success(DoubleResponse data) =
      _Success;
}
