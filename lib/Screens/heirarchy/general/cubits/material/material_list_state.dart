part of 'material_list_cubit.dart';

@freezed
class MaterialListState with _$MaterialListState {
  const factory MaterialListState.initial() = _Initial;
  const factory MaterialListState.success(PaginatedResponse data) = _Success;
  const factory MaterialListState.error() = _Error;
}
