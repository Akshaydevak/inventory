part of 'attributelist_cubit.dart';

@freezed
class AttributelistState with _$AttributelistState {
  const factory AttributelistState.initial() = _Initial;

  const factory AttributelistState.success(PaginatedResponse data) = _Success;
  const factory AttributelistState.error() = _Error;
}
