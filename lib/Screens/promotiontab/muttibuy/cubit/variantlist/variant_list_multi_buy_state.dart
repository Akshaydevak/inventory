part of 'variant_list_multi_buy_cubit.dart';

@freezed
class VariantListMultiBuyState with _$VariantListMultiBuyState {
  const factory VariantListMultiBuyState.initial() = _Initial;
  const factory VariantListMultiBuyState.success(PaginatedResponse data) = _Success;
  const factory VariantListMultiBuyState.error() = _Error;
}
