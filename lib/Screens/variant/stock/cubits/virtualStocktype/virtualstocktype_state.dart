part of 'virtualstocktype_cubit.dart';

@freezed
class VirtualstocktypeState with _$VirtualstocktypeState {
  const factory VirtualstocktypeState.initial() = _Initial;

  const factory VirtualstocktypeState.loading() = _Loading;
  const factory VirtualstocktypeState.error() = _Error;
  const factory VirtualstocktypeState.success(PurchaseOrdertype data) =
      _Success;
}
