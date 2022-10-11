part of 'readlinkeditem_cubit.dart';

@freezed
class ReadlinkeditemState with _$ReadlinkeditemState {
  const factory ReadlinkeditemState.initial() = _Initial;
  const factory ReadlinkeditemState.loading() = _Loading;
  const factory ReadlinkeditemState.error() = _Error;
  const factory ReadlinkeditemState.success(LinkedItemPostModel data) = _Success;
}
