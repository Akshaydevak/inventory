part of 'returntype_cubit.dart';


@freezed
class ReturntypeState with _$ReturntypeState {
  const factory ReturntypeState.initial() = _Initial;
  const factory ReturntypeState.loading() = _Loading;
  const factory ReturntypeState.error() = _Error;
  const factory ReturntypeState.success(Returntypemodel data) = _Success;
}
