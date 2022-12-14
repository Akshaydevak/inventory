part of 'costingchannel_read_cubit.dart';

@freezed

class CostingchannelReadState with _$CostingchannelReadState {
  const factory CostingchannelReadState.initial() = _Initial;
  const factory CostingchannelReadState.loading() = _Loading;
  const factory CostingchannelReadState.error() = _Error;
  const factory CostingchannelReadState.success(CostingPageCreationPostModel data) =
  _Success;
}
