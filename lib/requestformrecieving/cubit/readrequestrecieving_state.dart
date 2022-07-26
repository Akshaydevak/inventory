part of 'readrequestrecieving_cubit.dart';

@freezed
class ReadrequestrecievingState with _$ReadrequestrecievingState {
  const factory ReadrequestrecievingState.initial() = _Initial;
  const factory ReadrequestrecievingState.loading() = _Loading;
  const factory ReadrequestrecievingState.error() = _Error;
  const factory ReadrequestrecievingState.success(PurchaseRecievingRead data) =
      _Success;
}
