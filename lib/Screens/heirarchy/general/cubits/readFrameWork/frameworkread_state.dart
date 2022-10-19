part of 'frameworkread_cubit.dart';

@freezed
class FrameworkreadState with _$FrameworkreadState {
  const factory FrameworkreadState.initial() = _Initial;
  const factory FrameworkreadState.loading() = _Loading;
  const factory FrameworkreadState.error() = _Error;
  const factory FrameworkreadState.success(VariantFrameWorkPostModel data) = _Success;
}
