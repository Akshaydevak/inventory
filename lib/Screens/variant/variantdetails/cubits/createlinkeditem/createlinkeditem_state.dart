part of 'createlinkeditem_cubit.dart';

@freezed
class CreatelinkeditemState with _$CreatelinkeditemState {
  const factory CreatelinkeditemState.initial() = _Initial;
  const factory CreatelinkeditemState.loading() = _Loading;
  const factory CreatelinkeditemState.error() = _Error1;
  const factory CreatelinkeditemState.success(DoubleResponse data) = _Success;
}
