part of 'salesreturnvertical_cubit.dart';

@freezed
class SalesreturnverticalState with _$SalesreturnverticalState {
  const factory SalesreturnverticalState.initial() = _Initial;
  const factory SalesreturnverticalState.success(PaginatedResponse data) =
      _Success;
  const factory SalesreturnverticalState.error() = _Error;
}
