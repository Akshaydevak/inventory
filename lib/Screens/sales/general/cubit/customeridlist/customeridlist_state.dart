part of 'customeridlist_cubit.dart';

@freezed
class CustomeridlistState with _$CustomeridlistState {
  const factory CustomeridlistState.initial() = _Initial;
  const factory CustomeridlistState.loading() = _Loading;
  const factory CustomeridlistState.error() = _Error1;
  const factory CustomeridlistState.success(
      List<CustomerIdCreationModel> data) = _Success;
}
