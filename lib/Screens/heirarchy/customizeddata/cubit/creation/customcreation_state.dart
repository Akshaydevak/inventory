part of 'customcreation_cubit.dart';

@freezed
class CustomcreationState with _$CustomcreationState {
  const factory CustomcreationState.initial() = _Initial;
  const factory CustomcreationState.loading() = _Loading;
  const factory CustomcreationState.error() = _Error1;
  const factory CustomcreationState.success(DoubleResponse data) = _Success;
}
