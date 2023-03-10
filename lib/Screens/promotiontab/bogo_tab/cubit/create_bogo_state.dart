part of 'create_bogo_cubit.dart';


@freezed
class CreateBogoState with _$CreateBogoState {
  const factory CreateBogoState.initial() = _Initial;
  const factory CreateBogoState.loading() = _Loading;
  const factory CreateBogoState.error() = _Error1;
  const factory CreateBogoState.success(DoubleResponse data) = _Success;

}
