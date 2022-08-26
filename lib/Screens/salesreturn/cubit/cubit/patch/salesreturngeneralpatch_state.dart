part of 'salesreturngeneralpatch_cubit.dart';

@freezed
class SalesreturngeneralpatchState with _$SalesreturngeneralpatchState {
  const factory SalesreturngeneralpatchState.initial() = _Initial;
  const factory SalesreturngeneralpatchState.loading() = _Loading;
  const factory SalesreturngeneralpatchState.error() = _Error;
  const factory SalesreturngeneralpatchState.success(DoubleResponse data) =
      _Success;
}
