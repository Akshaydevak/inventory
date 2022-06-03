part of 'requestformread_cubit.dart';

@freezed
class RequestformreadState with _$RequestformreadState {
  const factory RequestformreadState.initial() = _Initial;
  const factory RequestformreadState.loading() = _Loading;
  const factory RequestformreadState.error() = _Error;
  const factory RequestformreadState.success(PurchaseOrderRead data) = _Success;
}
