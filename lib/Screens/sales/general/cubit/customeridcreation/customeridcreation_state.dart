part of 'customeridcreation_cubit.dart';

@freezed
class CustomeridcreationState with _$CustomeridcreationState {
  const factory CustomeridcreationState.initial() = _Initial;
  const factory CustomeridcreationState.loading() = _Loading;
  const factory CustomeridcreationState.error() = _Error1;
  const factory CustomeridcreationState.success(DoubleResponse data) = _Success;
}
