part of 'materialdelete_cubit.dart';

@freezed
class MaterialdeleteState with _$MaterialdeleteState {
  const factory MaterialdeleteState.initial() = _Initial;
  const factory MaterialdeleteState.loading() = _Loading;
  const factory MaterialdeleteState.error() = _Error;
  const factory MaterialdeleteState.success(DoubleResponse data) = _Success;
}
