part of 'requestformpost_cubit.dart';

@freezed
class RequestformpostState with _$RequestformpostState {
  const factory RequestformpostState.initial() = _Initial;
  const factory RequestformpostState.loading() = _Loading;
  const factory RequestformpostState.error() = _Error1;
  const factory RequestformpostState.success(DoubleResponse data) = _Success;
}
