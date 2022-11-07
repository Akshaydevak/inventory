part of 'readcustom_cubit.dart';

@freezed
class ReadcustomState with _$ReadcustomState {
  const factory ReadcustomState.initial() = _Initial;
  const factory ReadcustomState.loading() = _Loading;
  const factory ReadcustomState.error() = _Error;
  const factory ReadcustomState.success(ReadCustomModel data) = _Success;
}
