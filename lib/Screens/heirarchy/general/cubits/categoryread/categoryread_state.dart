part of 'categoryread_cubit.dart';

@freezed
class CategoryreadState with _$CategoryreadState {
  const factory CategoryreadState.initial() = _Initial;
  const factory CategoryreadState.loading() = _Loading;
  const factory CategoryreadState.error() = _Error;
  const factory CategoryreadState.success(CategoryReadModel data) = _Success;
}
