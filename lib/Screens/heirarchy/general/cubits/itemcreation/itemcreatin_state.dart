part of 'itemcreatin_cubit.dart';

@freezed
class ItemcreatinState with _$ItemcreatinState {
  const factory ItemcreatinState.initial() = _Initial;
  const factory ItemcreatinState.loading() = _Loading;
  const factory ItemcreatinState.error() = _Error1;
  const factory ItemcreatinState.success(DoubleResponse data) = _Success;
}
