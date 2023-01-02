part of 'attributecreationtypelist_cubit.dart';


@freezed
class AttributecreationtypelistState with _$AttributecreationtypelistState {
  const factory AttributecreationtypelistState.initial() = _Initial;
  const factory AttributecreationtypelistState.loading() = _Loading;
  const factory AttributecreationtypelistState.error() = _Error;
  const factory AttributecreationtypelistState.success(AttributeListModel data) = _Success;

}
