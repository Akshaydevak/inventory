part of 'listbrand_cubit.dart';

@freezed
class ListbrandState with _$ListbrandState {
  const factory ListbrandState.initial() = _Initial;
  const factory ListbrandState.loading() = _Loading;
  const factory ListbrandState.error() = _Error1;
  const factory ListbrandState.success(List<BrandListModel> data) = _Success;
}
