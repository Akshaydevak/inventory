part of 'multi_buy_creation_cubit.dart';


@freezed
class MultiBuyCreationState with _$MultiBuyCreationState {
  const factory MultiBuyCreationState.initial() = _Initial;
  const factory MultiBuyCreationState.loading() = _Loading;
  const factory MultiBuyCreationState.error() = _Error1;
  const factory MultiBuyCreationState.success(DoubleResponse data) = _Success;
}
