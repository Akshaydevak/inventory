part of 'baseuomcreation_cubit.dart';

@freezed
class BaseuomcreationState with _$BaseuomcreationState {
  const factory BaseuomcreationState.initial() = _Initial;
  const factory BaseuomcreationState.loading() = _Loading;
  const factory BaseuomcreationState.error() = _Error1;
  const factory BaseuomcreationState.success(DoubleResponse data) = _Success;
}
