part of 'listallsalesapi_cubit.dart';


@freezed
class ListallsalesapiState with _$ListallsalesapiState {
  const factory ListallsalesapiState.initial() = _Initial;
  const factory ListallsalesapiState.loading() = _Loading;
  const factory ListallsalesapiState.error() = _Error;
  const factory ListallsalesapiState.success(listAllSalesApis data) = _Success;
}
