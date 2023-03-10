part of 'bogo_list_all_cubit.dart';

@freezed
class BogoListAllState with _$BogoListAllState {
  const factory BogoListAllState.initial() = _Initial;
  const factory BogoListAllState.loading() = _Loading;
  const factory BogoListAllState.error() = _Error;
  const factory BogoListAllState.success(listAllSalesApis data) = _Success;

}
