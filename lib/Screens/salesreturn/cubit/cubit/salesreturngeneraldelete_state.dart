part of 'salesreturngeneraldelete_cubit.dart';

@freezed
class SalesreturngeneraldeleteState with _$SalesreturngeneraldeleteState {
  const factory SalesreturngeneraldeleteState.initial() = _Initial;
  const factory SalesreturngeneraldeleteState.loading() = _Loading;
  const factory SalesreturngeneraldeleteState.error() = _Error;
  const factory SalesreturngeneraldeleteState.success(DoubleResponse data) =
      _Success;
}
