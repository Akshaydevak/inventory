part of 'createcategory_cubit.dart';

@freezed
class CreatecategoryState with _$CreatecategoryState {
  const factory CreatecategoryState.initial() = _Initial;
  const factory CreatecategoryState.loading() = _Loading;
  const factory CreatecategoryState.error() = _Error1;
  const factory CreatecategoryState.success(DoubleResponse data) = _Success;
}
