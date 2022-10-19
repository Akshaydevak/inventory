part of 'qrgenerating_cubit.dart';

@freezed
class QrgeneratingState with _$QrgeneratingState {
  const factory QrgeneratingState.initial() = _Initial;
  const factory QrgeneratingState.loading() = _Loading;
  const factory QrgeneratingState.error() = _Error1;
  const factory QrgeneratingState.success(DoubleResponse data) = _Success;
}
