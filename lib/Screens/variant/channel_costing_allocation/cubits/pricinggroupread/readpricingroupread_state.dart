part of 'readpricingroupread_cubit.dart';

@freezed
class ReadpricingroupreadState with _$ReadpricingroupreadState {
  const factory ReadpricingroupreadState.initial() = _Initial;
  const factory ReadpricingroupreadState.loading() = _Loading;
  const factory ReadpricingroupreadState.error() = _Error;
  const factory ReadpricingroupreadState.success(PricingGroupListModel data) =
      _Success;
}
