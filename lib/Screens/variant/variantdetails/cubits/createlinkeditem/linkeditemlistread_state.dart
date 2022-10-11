part of 'linkeditemlistread_cubit.dart';

@freezed
class LinkeditemlistreadState with _$LinkeditemlistreadState {
  const factory LinkeditemlistreadState.initial() = _Initial;
  const factory LinkeditemlistreadState.loading() = _Loading;
  const factory LinkeditemlistreadState.error() = _Error;
  const factory LinkeditemlistreadState.success(List<LinkedItemListReadModel> data) =
      _Success;
}
