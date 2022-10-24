part of 'producedcountry_cubit.dart';

@freezed
class ProducedcountryState with _$ProducedcountryState {
  const factory ProducedcountryState.initial() = _Initial;
  const factory ProducedcountryState.loading() = _Loading;
  const factory ProducedcountryState.error() = _Error;
  const factory ProducedcountryState.success(List<VariantReadModel> data) =
      _Success;
}
