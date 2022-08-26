part of 'imagepost_cubit.dart';

@freezed
class ImagepostState with _$ImagepostState {
  const factory ImagepostState.initial() = _Initial;
  const factory ImagepostState.loading() = _Loading;
  const factory ImagepostState.error() = _Error;
  const factory ImagepostState.success(DoubleResponse data) = _Success;
}
