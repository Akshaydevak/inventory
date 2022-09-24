
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channelstock_allocationlist.g.dart';
part 'channelstock_allocationlist.freezed.dart';

@freezed
class ChanmneStockListModelModel with _$ChanmneStockListModelModel {
  const factory ChanmneStockListModelModel({
    final int? id,


    final List< String>? values,
    @JsonKey(name: "channel_type_code") final String? channelTypecode,

    @JsonKey(name: "channel_type_id") final String? channelTypeId,
    @JsonKey(name: "channel_type_name") final String? channeltypeName,

  }) = _ChanmneStockListModelModel;
  factory ChanmneStockListModelModel.fromJson(Map<String, dynamic> json) =>
      _$ChanmneStockListModelModelFromJson(json);
}