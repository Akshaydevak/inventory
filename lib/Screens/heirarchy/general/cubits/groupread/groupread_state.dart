part of 'groupread_cubit.dart';

@freezed
class GroupreadState with _$GroupreadState {
  const factory GroupreadState.initial() = _Initial;
  const factory GroupreadState.loading() = _Loading;
  const factory GroupreadState.error() = _Error;
  const factory GroupreadState.success(MaterialReadModel data) = _Success;
}
