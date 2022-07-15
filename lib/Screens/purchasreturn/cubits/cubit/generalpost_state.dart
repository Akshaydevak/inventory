part of 'generalpost_cubit.dart';

@freezed
class GeneralpostState with _$GeneralpostState {
  const factory GeneralpostState.initial() = _Initial;
  const factory GeneralpostState.loading() = _Loading;
  const factory GeneralpostState.error() = _Error1;
  const factory GeneralpostState.success(DoubleResponse data) = _Success;
}
