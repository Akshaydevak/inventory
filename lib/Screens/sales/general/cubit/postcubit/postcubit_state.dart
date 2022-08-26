part of 'postcubit_cubit.dart';

@freezed
class PostcubitState with _$PostcubitState {
  const factory PostcubitState.initial() = _Initial;
  const factory PostcubitState.loading() = _Loading;
  const factory PostcubitState.error() = _Error1;
  const factory PostcubitState.success(DoubleResponse data) = _Success;
}
