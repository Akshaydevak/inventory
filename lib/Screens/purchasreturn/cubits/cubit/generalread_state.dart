part of 'generalread_cubit.dart';

@freezed
class GeneralreadState with _$GeneralreadState {
  const factory GeneralreadState.initial() = _Initial;
  const factory GeneralreadState.loading() = _Loading;
  const factory GeneralreadState.error() = _Error;
  const factory GeneralreadState.success(ReturnGeneralRead data) = _Success;
}
