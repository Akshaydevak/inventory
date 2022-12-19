part of 'allcategorylist_cubit.dart';


@freezed
class AllcategorylistState with _$AllcategorylistState {
  const factory AllcategorylistState.initial() = _Initial;
  const factory AllcategorylistState.success(PaginatedResponse data) = _Success;
  const factory AllcategorylistState.error() = _Error;
}
