part of 'listcustomvertical_cubit.dart';

@freezed
class ListcustomverticalState with _$ListcustomverticalState {
  const factory ListcustomverticalState.initial() = _Initial;
  const factory ListcustomverticalState.success(PaginatedResponse data) =
      _Success;
  const factory ListcustomverticalState.error() = _Error;
}
