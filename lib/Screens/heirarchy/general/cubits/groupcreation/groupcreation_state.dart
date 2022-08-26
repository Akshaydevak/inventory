part of 'groupcreation_cubit.dart';

@freezed
class GroupcreationState with _$GroupcreationState {
  const factory GroupcreationState.initial() = _Initial;
  const factory GroupcreationState.loading() = _Loading;
  const factory GroupcreationState.error() = _Error1;
  const factory GroupcreationState.success(DoubleResponse data) = _Success;
}
