// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channelstock_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelAllocationStockStockReadModel
    _$$_ChannelAllocationStockStockReadModelFromJson(
            Map<String, dynamic> json) =>
        _$_ChannelAllocationStockStockReadModel(
          id: json['id'] as int?,
          code: json['code'] as String?,
          channelTypeStockCode: json['channel_type_stock_code'] as String?,
          channeltypeCode: json['channel_type_code'] as String?,
          channelTypeId: json['channel_type_id'] as String?,
          channelTypeName: json['channel_type_name'] as String?,
          channelAllocationRatio: json['channel_allocation_ratio'] as String?,
          minMaxRatio: json['min_max_ratio'] as String?,
          safetyStock: json['safety_stock_qty'] as int?,
          reOrderPoint: json['reorder_point'] as int?,
          reOrderQuantity: json['reorder_quantity'] as int?,
          availableQuantity: json['available_qty'] as int?,
          reservedQuantity: json['reserved_qty'] as int?,
          damagedQuantity: json['damaged_qty'] as int?,
          returnedQuantity: json['returned_qty'] as int?,
          replacementQuantity: json['replacement_qty'] as int?,
          minimumQuantity: json['minimum_quantity'] as int?,
          maximumQuantity: json['maximum_quantity'] as int?,
          virtualStock: json['virtual_stock'] as int?,
          virtualType: json['virtual_type'] as String?,
          addVirtualStock: json['add_virtual_stock'] as int?,
          stockId: json['stock_id'] as int?,
          variantId: json['variant_id'] as int?,
          stockWarning: json['stock_warning'] as bool? ?? false,
          salesblock: json['sales_block'] as bool? ?? false,
        );

Map<String, dynamic> _$$_ChannelAllocationStockStockReadModelToJson(
        _$_ChannelAllocationStockStockReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'channel_type_stock_code': instance.channelTypeStockCode,
      'channel_type_code': instance.channeltypeCode,
      'channel_type_id': instance.channelTypeId,
      'channel_type_name': instance.channelTypeName,
      'channel_allocation_ratio': instance.channelAllocationRatio,
      'min_max_ratio': instance.minMaxRatio,
      'safety_stock_qty': instance.safetyStock,
      'reorder_point': instance.reOrderPoint,
      'reorder_quantity': instance.reOrderQuantity,
      'available_qty': instance.availableQuantity,
      'reserved_qty': instance.reservedQuantity,
      'damaged_qty': instance.damagedQuantity,
      'returned_qty': instance.returnedQuantity,
      'replacement_qty': instance.replacementQuantity,
      'minimum_quantity': instance.minimumQuantity,
      'maximum_quantity': instance.maximumQuantity,
      'virtual_stock': instance.virtualStock,
      'virtual_type': instance.virtualType,
      'add_virtual_stock': instance.addVirtualStock,
      'stock_id': instance.stockId,
      'variant_id': instance.variantId,
      'stock_warning': instance.stockWarning,
      'sales_block': instance.salesblock,
    };
