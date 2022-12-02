
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channelsreadmodel.g.dart';
part 'channelsreadmodel.freezed.dart';

@freezed
class ChannelListModel with _$ChannelListModel {
  const factory ChannelListModel({
    final int? id,
    @JsonKey(name: "channel_name") final String? channelName,
    @JsonKey(name: "channel_id") final String? channelId,
    @JsonKey(name: "channel_code") final String? channelCode,
    @JsonKey(name: "channel_stock_type") final String? channelStockType,
    @JsonKey(name: "channel_stock_code") final String? channelStockCode,
    @JsonKey(name: "channel_stock_quantity") final int? channelStockQuantity,
    @JsonKey(name: "safety_stock_qty") final int? safetyStockQuantity,
    @JsonKey(name: "reorder_point") final int? reOrderPoint,
    @JsonKey(name: "reorder_quantity") final int? reOrderQuantity,
    @JsonKey(name: "available_qty") final int? availableQuantity,
    @JsonKey(name: "reserved_qty") final int? reservedQuantity,
    @JsonKey(name: "damaged_qty") final int? damagedQuantity,
    @JsonKey(name: "returned_qty") final int? returnedQuantity,
    @JsonKey(name: "replacement_qty") final int? replaceMentQuantity,
    @JsonKey(name: "virtual_stock") final int? virtualStock,
    @JsonKey(name: "purchase_blocked_qty") final int? purchaseBlockQuantity,
    @JsonKey(name: "sales_blocked_qty") final int? salesblockQuantity,
    @JsonKey(name: "add_virtual_stock") final int? addVirtualStock,
    @JsonKey(name: "daily_stock_quantity") final int? dailyStockQuantity,
    @JsonKey(name: "virtual_type") final String? virtualType,
    @JsonKey(name: "channel_type_code") final String? channelTypeCode,
    @JsonKey(name: "variant_code") final String? variantCode,
    @JsonKey(name: "channel_type_stock_id") final int? channelTypeStockId,
    @JsonKey(name: "stock_id") final int? stockId,
    @JsonKey(name: "variant_id") final int? varaintId,
    @JsonKey(name: "channel_status_crucial_point") final int? channelStatusCrucialPoint,
    @JsonKey(name: "channel_status_medium_point") final int? channelStatusMediumPoint,
    @JsonKey(name: "stock_warning",defaultValue: false) final bool? stockWarning,
    @JsonKey(name: "sales_block",defaultValue: false) final bool? salesBlock,
    @JsonKey(name: "purchase_blocked",defaultValue: false) final bool? purchaseBlocked,
    @JsonKey(name: "is_daily_stock_available",defaultValue: false) final bool? isDAilyStockAvailable,

  }) = _ChannelListModel;
  factory ChannelListModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelListModelFromJson(json);
}