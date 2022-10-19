// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channelsreadmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelListModel _$$_ChannelListModelFromJson(Map<String, dynamic> json) =>
    _$_ChannelListModel(
      id: json['id'] as int?,
      channelName: json['channel_name'] as String?,
      channelId: json['channel_id'] as String?,
      channelCode: json['channel_code'] as String?,
      channelStockType: json['channel_stock_type'] as String?,
      channelStockCode: json['channel_stock_code'] as String?,
      channelStockQuantity: json['channel_stock_quantity'] as int?,
      safetyStockQuantity: json['safety_stock_qty'] as int?,
      reOrderPoint: json['reorder_point'] as int?,
      reOrderQuantity: json['reorder_quantity'] as int?,
      availableQuantity: json['available_qty'] as int?,
      reservedQuantity: json['reserved_qty'] as int?,
      damagedQuantity: json['damaged_qty'] as int?,
      returnedQuantity: json['returned_qty'] as int?,
      replaceMentQuantity: json['replacement_qty'] as int?,
      virtualStock: json['virtual_stock'] as int?,
      purchaseBlockQuantity: json['purchase_blocked_qty'] as int?,
      salesblockQuantity: json['sales_blocked_qty'] as int?,
      addVirtualStock: json['add_virtual_stock'] as int?,
      virtualType: json['virtual_type'] as String?,
      channelTypeCode: json['channel_type_code'] as String?,
      variantCode: json['variant_code'] as String?,
      channelTypeStockId: json['channel_type_stock_id'] as int?,
      stockId: json['stock_id'] as int?,
      varaintId: json['variant_id'] as int?,
      channelStatusCrucialPoint: json['channel_status_crucial_point'] as int?,
      channelStatusMediumPoint: json['channel_status_medium_point'] as int?,
      stockWarning: json['stock_warning'] as bool? ?? false,
      salesBlock: json['sales_block'] as bool? ?? false,
      purchaseBlocked: json['purchase_blocked'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ChannelListModelToJson(_$_ChannelListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel_name': instance.channelName,
      'channel_id': instance.channelId,
      'channel_code': instance.channelCode,
      'channel_stock_type': instance.channelStockType,
      'channel_stock_code': instance.channelStockCode,
      'channel_stock_quantity': instance.channelStockQuantity,
      'safety_stock_qty': instance.safetyStockQuantity,
      'reorder_point': instance.reOrderPoint,
      'reorder_quantity': instance.reOrderQuantity,
      'available_qty': instance.availableQuantity,
      'reserved_qty': instance.reservedQuantity,
      'damaged_qty': instance.damagedQuantity,
      'returned_qty': instance.returnedQuantity,
      'replacement_qty': instance.replaceMentQuantity,
      'virtual_stock': instance.virtualStock,
      'purchase_blocked_qty': instance.purchaseBlockQuantity,
      'sales_blocked_qty': instance.salesblockQuantity,
      'add_virtual_stock': instance.addVirtualStock,
      'virtual_type': instance.virtualType,
      'channel_type_code': instance.channelTypeCode,
      'variant_code': instance.variantCode,
      'channel_type_stock_id': instance.channelTypeStockId,
      'stock_id': instance.stockId,
      'variant_id': instance.varaintId,
      'channel_status_crucial_point': instance.channelStatusCrucialPoint,
      'channel_status_medium_point': instance.channelStatusMediumPoint,
      'stock_warning': instance.stockWarning,
      'sales_block': instance.salesBlock,
      'purchase_blocked': instance.purchaseBlocked,
    };
