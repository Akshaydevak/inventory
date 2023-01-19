part of 'orderedperson_cubit.dart';

@freezed
class OrderedpersonState with _$OrderedpersonState {
  const factory OrderedpersonState.initial() = _Initial;
  const factory OrderedpersonState.loading() = _Loading;
  const factory OrderedpersonState.error() = _Error1;
  const factory OrderedpersonState.success(PaginatedResponse data) = _Success;
}
