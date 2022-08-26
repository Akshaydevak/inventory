part of 'otpbinding_cubit.dart';

@freezed
class OtpbindingState with _$OtpbindingState {
  const factory OtpbindingState.initial() = _Initial;
  const factory OtpbindingState.loading() = _Loading;
  const factory OtpbindingState.error() = _Error;
  const factory OtpbindingState.success(DoubleResponse data) = _Success;
}
