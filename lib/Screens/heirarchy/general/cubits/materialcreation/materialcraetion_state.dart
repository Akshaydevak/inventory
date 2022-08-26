part of 'materialcraetion_cubit.dart';

@freezed
class MaterialcraetionState with _$MaterialcraetionState {
  const factory MaterialcraetionState.initial() = _Initial;
  const factory MaterialcraetionState.loading() = _Loading;
  const factory MaterialcraetionState.error() = _Error1;
  const factory MaterialcraetionState.success(DoubleResponse data) = _Success;
}
