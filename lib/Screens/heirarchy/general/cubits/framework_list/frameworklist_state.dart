part of 'frameworklist_cubit.dart';

@freezed
class FrameworklistState with _$FrameworklistState {
  const factory FrameworklistState.initial() = _Initial;
  const factory FrameworklistState.loading() = _Loading;
  const factory FrameworklistState.error() = _Error;
  const factory FrameworklistState.success(PaginatedResponse data) =
      _Success;
}
