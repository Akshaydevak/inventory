
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channelstock_read.g.dart';
part 'channelstock_read.freezed.dart';


@freezed
class ChannelAllocationStockStockReadModel with _$ChannelAllocationStockStockReadModel {
  const factory ChannelAllocationStockStockReadModel({
    final int? id,
    final String? code,
    @JsonKey(name: "channel_type_stock_code") final String? channelTypeStockCode,
    @JsonKey(name: "channel_type_code") final String? channeltypeCode,
    @JsonKey(name: "channel_type_id") final String? channelTypeId,
    @JsonKey(name: "channel_type_name") final String? channelTypeName,
    @JsonKey(name: "channel_allocation_ratio") final String? channelAllocationRatio,
    @JsonKey(name: "min_max_ratio") final String? minMaxRatio,
    @JsonKey(name: "safety_stock_qty") final int? safetyStock,
    @JsonKey(name: "reorder_point") final int? reOrderPoint,
    @JsonKey(name: "reorder_quantity") final int? reOrderQuantity,
    @JsonKey(name: "available_qty") final int? availableQuantity  ,
    @JsonKey(name: "reserved_qty") final int? reservedQuantity  ,
    @JsonKey(name: "damaged_qty") final int? damagedQuantity  ,
    @JsonKey(name: "returned_qty") final int? returnedQuantity  ,
    @JsonKey(name: "replacement_qty") final int? replacementQuantity  ,
    @JsonKey(name: "minimum_quantity") final int? minimumQuantity  ,
    @JsonKey(name: "maximum_quantity") final int? maximumQuantity  ,
    @JsonKey(name: "virtual_stock") final int? virtualStock  ,
    @JsonKey(name: "virtual_type") final String? virtualType  ,
    @JsonKey(name: "add_virtual_stock") final int? addVirtualStock  ,
    @JsonKey(name: "stock_id") final int? stockId  ,
    @JsonKey(name: "variant_id") final int? variantId  ,
    @JsonKey(name: "stock_warning",defaultValue: false) final bool? stockWarning,
    @JsonKey(name: "sales_block",defaultValue: false) final bool? salesblock,




  }) = _ChannelAllocationStockStockReadModel;
  factory ChannelAllocationStockStockReadModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelAllocationStockStockReadModelFromJson(json);
}