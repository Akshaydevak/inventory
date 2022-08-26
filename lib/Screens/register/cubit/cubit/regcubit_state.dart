part of 'regcubit_cubit.dart';

@freezed
class RegcubitState with _$RegcubitState {
  const factory RegcubitState.initial() = _Initial;
  const factory RegcubitState.loading() = _Loading;
  const factory RegcubitState.error() = _Error;
  const factory RegcubitState.success(DoubleResponse data) = _Success;
}
