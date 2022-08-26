part of 'branddelete_cubit.dart';

@freezed
class BranddeleteState with _$BranddeleteState {
  const factory BranddeleteState.initial() = _Initial;
  const factory BranddeleteState.loading() = _Loading;
  const factory BranddeleteState.error() = _Error;
  const factory BranddeleteState.success(DoubleResponse data) = _Success;
}
