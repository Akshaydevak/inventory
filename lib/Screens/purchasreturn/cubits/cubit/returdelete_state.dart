part of 'returdelete_cubit.dart';

@freezed
class ReturdeleteState with _$ReturdeleteState {
  const factory ReturdeleteState.initial() = _Initial;
  const factory ReturdeleteState.loading() = _Loading;
  const factory ReturdeleteState.error() = _Error;
  const factory ReturdeleteState.success(DoubleResponse data) = _Success;
}
