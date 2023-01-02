part of 'attributecreationread_cubit.dart';


@freezed
class AttributecreationreadState with _$AttributecreationreadState {
  const factory AttributecreationreadState.initial() = _Initial;
  const factory AttributecreationreadState.loading() = _Loading;
  const factory AttributecreationreadState.error() = _Error;
  const factory AttributecreationreadState.success(AttributeListModel data) =
  _Success;

}
