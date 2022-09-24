part of 'readcosting_cubit.dart';

@freezed
class ReadcostingState with _$ReadcostingState {
  const factory ReadcostingState.initial() = _Initial;
  const factory ReadcostingState.loading() = _Loading;
  const factory ReadcostingState.error() = _Error;
  const factory ReadcostingState.success(CostingCreatePostModel data) =
      _Success;
}
