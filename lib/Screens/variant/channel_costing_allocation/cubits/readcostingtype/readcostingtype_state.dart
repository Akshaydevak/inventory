part of 'readcostingtype_cubit.dart';

@freezed
class ReadcostingtypeState with _$ReadcostingtypeState {
  const factory ReadcostingtypeState.initial() = _Initial;
  const factory ReadcostingtypeState.loading() = _Loading;
  const factory ReadcostingtypeState.error() = _Error;
  const factory ReadcostingtypeState.success(CostingMetodTypePostModel data) =
      _Success;
}
