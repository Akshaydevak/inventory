part of 'brandread_cubit.dart';

@freezed
class BrandreadState with _$BrandreadState {
  const factory BrandreadState.initial() = _Initial;
  const factory BrandreadState.loading() = _Loading;
  const factory BrandreadState.error() = _Error;
  const factory BrandreadState.success(BrandReadModel data) = _Success;
}
