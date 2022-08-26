part of 'salesreturnpost_cubit.dart';

@freezed
class SalesreturnpostState with _$SalesreturnpostState {
  const factory SalesreturnpostState.initial() = _Initial;
    const factory SalesreturnpostState.loading() = _Loading;
    const factory SalesreturnpostState.error() = _Error1;
    const factory SalesreturnpostState.success(DoubleResponse data) = _Success;
}
