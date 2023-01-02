part of 'attributetypesave_cubit.dart';

@freezed
class AttributetypesaveState with _$AttributetypesaveState {
  const factory AttributetypesaveState.initial() = _Initial;
  const factory AttributetypesaveState.loading() = _Loading;
  const factory AttributetypesaveState.error() = _Error1;
  const factory AttributetypesaveState.success(DoubleResponse data) = _Success;
}
