part of 'itemread_cubit.dart';

@freezed
class ItemreadState with _$ItemreadState {
  const factory ItemreadState.initial() = _Initial;
  const factory ItemreadState.loading() = _Loading;
  const factory ItemreadState.error() = _Error;
  const factory ItemreadState.success(ItemReadModel data) = _Success;
}
