part of 'multibuy_all_list_cubit.dart';


@freezed
class MultibuyAllListState with _$MultibuyAllListState {
  const factory MultibuyAllListState.initial() = _Initial;
  const factory MultibuyAllListState.loading() = _Loading;
  const factory MultibuyAllListState.error() = _Error;
  const factory MultibuyAllListState.success(listAllSalesApis data) = _Success;

}
