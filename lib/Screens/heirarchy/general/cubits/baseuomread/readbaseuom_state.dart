part of 'readbaseuom_cubit.dart';

@freezed
class ReadbaseuomState with _$ReadbaseuomState {
  const factory ReadbaseuomState.initial() = _Initial;
  const factory ReadbaseuomState.loading() = _Loading;
  const factory ReadbaseuomState.error() = _Error;
  const factory ReadbaseuomState.success(BaseUomCreationtModel data) = _Success;
}
