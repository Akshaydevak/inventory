// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockReadModel _$$_StockReadModelFromJson(Map<String, dynamic> json) =>
    _$_StockReadModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      stockData: json['stock_data'] == null
          ? null
          : StockData.fromJson(json['stock_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StockReadModelToJson(_$_StockReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'stock_data': instance.stockData,
    };

_$_StockData _$$_StockDataFromJson(Map<String, dynamic> json) => _$_StockData(
      id: json['id'] as int?,
      code: json['code'] as String?,
      baseUomName: json['base_uom_name'] as String?,
      purchaseUomName: json['purchase_uom_name'] as String?,
      salesUomName: json['sales_uom_name'] as String?,
      variantId: json['variant_id'] as int?,
      variantCode: json['variant_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      stockCode: json['stock_code'] as String?,
      baseUom: json['base_uom'] as int?,
      salesUOM: json['sales_uom'] as int?,
      availableQuantity: json['available_qty'] as int?,
      availablcancelledQuantityeQuantity: json['cancelled_qty'] as int?,
      reservedQuantity: json['reserved_qty'] as int?,
      damagedQuantity: json['damaged_qty'] as int?,
      returnQuantity: json['return_qty'] as int?,
      salesBlockQuantity: json['sales_blocked_qty'] as int?,
      purchaseBlockQuantity: json['purchase_blocked_qty'] as int?,
      createdAt: json['created_at'] as String?,
      stockWarning: json['stock_warning'] as bool? ?? false,
      salesBlocked: json['sales_blocked'] as bool? ?? false,
    );

Map<String, dynamic> _$$_StockDataToJson(_$_StockData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'base_uom_name': instance.baseUomName,
      'purchase_uom_name': instance.purchaseUomName,
      'sales_uom_name': instance.salesUomName,
      'variant_id': instance.variantId,
      'variant_code': instance.variantCode,
      'inventory_id': instance.inventoryId,
      'stock_code': instance.stockCode,
      'base_uom': instance.baseUom,
      'sales_uom': instance.salesUOM,
      'available_qty': instance.availableQuantity,
      'cancelled_qty': instance.availablcancelledQuantityeQuantity,
      'reserved_qty': instance.reservedQuantity,
      'damaged_qty': instance.damagedQuantity,
      'return_qty': instance.returnQuantity,
      'sales_blocked_qty': instance.salesBlockQuantity,
      'purchase_blocked_qty': instance.purchaseBlockQuantity,
      'created_at': instance.createdAt,
      'stock_warning': instance.stockWarning,
      'sales_blocked': instance.salesBlocked,
    };
