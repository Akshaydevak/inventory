import 'package:freezed_annotation/freezed_annotation.dart';
part 'channelpost.g.dart';
part 'channelpost.freezed.dart';

@freezed
class ChannelPostModel with _$ChannelPostModel {
  const factory ChannelPostModel({

    final int? priority,

    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "selection_type") final String? selectionType,
    @JsonKey(name: "channel_type_code") final String? channelTypeCode,
    @JsonKey(name: "channel_type_name") final String? channelTypeName,
    @JsonKey(name: "channel_type_id") final String? channelTypeId,
    @JsonKey(name: "selected_data") final List<SelectedData>? selectedData,
    @JsonKey(name: "channel_data") final  List<ChannelDatas>? channelDatas,




  }) = _ChannelPostModel;
  factory ChannelPostModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelPostModelFromJson(json);
}
@freezed
class SelectedData with _$SelectedData {
  const factory SelectedData({

    final int? id,
    final String? code,







  }) = _SelectedData;
  factory SelectedData.fromJson(Map<String, dynamic> json) =>
      _$SelectedDataFromJson(json);
}

@freezed
class ChannelDatas with _$ChannelDatas {
  const factory ChannelDatas({

    final int? priority,

    @JsonKey(name: "channel_id") final String? channelId,
    @JsonKey(name: "channel_code") final String? channelCode,
    @JsonKey(name: "channel_name") final String? channelName,
    @JsonKey(name: "channel_type_name") final String? channelTypeName,
    @JsonKey(name: "channel_stock_type") final String? channelStockType,





  }) = _ChannelDatas;
  factory ChannelDatas.fromJson(Map<String, dynamic> json) =>
      _$ChannelDatasFromJson(json);
}