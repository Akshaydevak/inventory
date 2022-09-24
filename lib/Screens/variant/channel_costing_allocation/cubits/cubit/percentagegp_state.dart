part of 'percentagegp_cubit.dart';

@freezed
class PercentagegpState with _$PercentagegpState {
  const factory PercentagegpState.initial() = _Initial;
  const factory PercentagegpState.loading() = _Loading;
  const factory PercentagegpState.error() = _Error1;
  const factory PercentagegpState.success(ListingChnanelTableModel data) =
      _Success;
}
