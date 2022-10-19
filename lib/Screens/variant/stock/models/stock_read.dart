
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_read.g.dart';
part 'stock_read.freezed.dart';
@freezed
class StockReadModel with _$StockReadModel {
  const factory StockReadModel({
    final int? id,
    final String? code,
    @JsonKey(name: "stock_data") final StockData? stockData,


  }) = _StockReadModel;
  factory StockReadModel.fromJson(Map<String, dynamic> json) =>
      _$StockReadModelFromJson(json);
}

@freezed
class StockData with _$StockData {
  const factory StockData({
    final int? id,
    final String? code,
    @JsonKey(name: "base_uom_name") final String? baseUomName,
    @JsonKey(name: "purchase_uom_name") final String? purchaseUomName,
    @JsonKey(name: "purchase_uom") final int? purchaseUom,
    @JsonKey(name: "sales_uom_name") final String? salesUomName,
    @JsonKey(name: "variant_id") final int? variantId,
    @JsonKey(name: "variant_code") final String? variantCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "channel_type_allocation_ratio") final String? channelTypeAllocationRatio,
    @JsonKey(name: "min_max_ratio") final String? minMaxRatio,
    @JsonKey(name: "virtual_type") final String? virtualType,
    @JsonKey(name: "stock_code") final String? stockCode,
    @JsonKey(name: "safety_stock_qty") final int? safetyStockQty,
    @JsonKey(name: "reorder_qty") final int? reOrderQuantity,
    @JsonKey(name: "reorder_point") final int? reOrderPoint,
    @JsonKey(name: "base_uom") final int? baseUom,
    @JsonKey(name: "sales_uom") final int? salesUOM,
    @JsonKey(name: "available_qty") final int? availableQuantity,
    @JsonKey(name: "cancelled_qty") final int? availablcancelledQuantityeQuantity,
    @JsonKey(name: "reserved_qty") final int? reservedQuantity,
    @JsonKey(name: "damaged_qty") final int? damagedQuantity,
    @JsonKey(name: "return_qty") final int? returnQuantity,
    @JsonKey(name: "sales_blocked_qty") final int? salesBlockQuantity,
    @JsonKey(name: "purchase_blocked_qty") final int? purchaseBlockQuantity,
    @JsonKey(name: "maximum_quantity") final int? maximumQuantity,
    @JsonKey(name: "add_virtual_stock") final int? addVirtualStock,
    @JsonKey(name: "virtual_stock") final int? virtualStock,
    @JsonKey(name: "minimum_quantity") final int? minimumQuantity,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "stock_warning",defaultValue: false) final bool? stockWarning,
    @JsonKey(name: "sales_blocked",defaultValue: false) final bool? salesBlocked,
    @JsonKey(name: "purchase_blocked",defaultValue: false) final bool? purchaseBlocked,


  }) = _StockData;
  factory StockData.fromJson(Map<String, dynamic> json) =>
      _$StockDataFromJson(json);
}