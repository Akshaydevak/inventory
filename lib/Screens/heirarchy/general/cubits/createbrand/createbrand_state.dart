part of 'createbrand_cubit.dart';

@freezed
class CreatebrandState with _$CreatebrandState {
  const factory CreatebrandState.initial() = _Initial;
  const factory CreatebrandState.loading() = _Loading;
  const factory CreatebrandState.error() = _Error1;
  const factory CreatebrandState.success(DoubleResponse data) = _Success;
}
