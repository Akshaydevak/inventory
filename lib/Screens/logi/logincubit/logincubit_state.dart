part of 'logincubit_cubit.dart';

@freezed
class LogincubitState with _$LogincubitState {
  const factory LogincubitState.initial() = _Initial;
  const factory LogincubitState.loading() = _Loading;
  const factory LogincubitState.error() = _Error;
  const factory LogincubitState.success(DoubleResponse data) = _Success;
}
