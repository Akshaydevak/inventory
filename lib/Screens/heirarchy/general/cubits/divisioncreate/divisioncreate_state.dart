part of 'divisioncreate_cubit.dart';

@freezed
class DivisioncreateState with _$DivisioncreateState {
  const factory DivisioncreateState.initial() = _Initial;
  const factory DivisioncreateState.loading() = _Loading;
  const factory DivisioncreateState.error() = _Error1;
  const factory DivisioncreateState.success(DoubleResponse data) = _Success;
}
