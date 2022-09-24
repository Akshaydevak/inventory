part of 'pricinggptype_cubit.dart';

@freezed
class PricinggptypeState with _$PricinggptypeState {
  const factory PricinggptypeState.initial() = _Initial;
  const factory PricinggptypeState.loading() = _Loading;
  const factory PricinggptypeState.error() = _Error;
  const factory PricinggptypeState.success(PurchaseOrdertype data) = _Success;
}
