part of 'channelsttocktableread_cubit.dart';

@freezed
class ChannelsttocktablereadState with _$ChannelsttocktablereadState {
  const factory ChannelsttocktablereadState.initial() = _Initial;
  const factory ChannelsttocktablereadState.loading() = _Loading;
  const factory ChannelsttocktablereadState.error() = _Error;
  const factory ChannelsttocktablereadState.success(
      List<ListingChnanelTableModel> data) = _Success;
}
