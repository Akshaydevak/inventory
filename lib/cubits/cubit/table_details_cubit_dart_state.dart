part of 'table_details_cubit_dart_cubit.dart';

@freezed
class TableDetailsCubitDartState with _$TableDetailsCubitDartState {
  const factory TableDetailsCubitDartState.initial() = _Initial;
  const factory TableDetailsCubitDartState.loading() = _Loading;
  const factory TableDetailsCubitDartState.error() = _Error1;
  const factory TableDetailsCubitDartState.success(
      PurchaseOrderTableModel data) = _Success;
}
