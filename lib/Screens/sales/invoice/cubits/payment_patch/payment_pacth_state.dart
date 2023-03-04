part of 'payment_pacth_cubit.dart';


@freezed
class PaymentPacthState with _$PaymentPacthState {
  const factory PaymentPacthState.initial() = _Initial;
  const factory PaymentPacthState.loading() = _Loading;
  const factory PaymentPacthState.error() = _Error;
  const factory PaymentPacthState.success(DoubleResponse data) =
  _Success;
}
