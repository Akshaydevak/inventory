// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'costingpagecreation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CostingPageCreationPostModel _$$_CostingPageCreationPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_CostingPageCreationPostModel(
      description: json['description'] as String?,
      id: json['id'] as int?,
      pricingPgtype: (json['pricing_pg_type'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      channelId: json['channel_id'] as int?,
      costingMethodId: json['costing_method_id'] as int?,
      pricingGroupId: json['pricing_group_id'] as int?,
      channelStockId: json['channel_stock_id'] as int?,
      channelCode: json['channel_code'] as String?,
      pricingGroupName: json['price_group_name'] as String?,
      costingMethodName: json['costing_method_name'] as String?,
      channelStockCode: json['channel_stock_code'] as String?,
      costingCode: json['costing_code'] as String?,
      variantId: json['variant_id'] as int?,
      variantCode: json['variant_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      createdBy: json['created_by'] as String?,
      pricingGpType: json['pricing_gp_type'] as String?,
      gpPercentage: (json['gp_percentage'] as num?)?.toDouble(),
      unitCost: (json['unit_cost'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CostingPageCreationPostModelToJson(
        _$_CostingPageCreationPostModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'pricing_pg_type': instance.pricingPgtype,
      'channel_id': instance.channelId,
      'costing_method_id': instance.costingMethodId,
      'pricing_group_id': instance.pricingGroupId,
      'channel_stock_id': instance.channelStockId,
      'channel_code': instance.channelCode,
      'price_group_name': instance.pricingGroupName,
      'costing_method_name': instance.costingMethodName,
      'channel_stock_code': instance.channelStockCode,
      'costing_code': instance.costingCode,
      'variant_id': instance.variantId,
      'variant_code': instance.variantCode,
      'inventory_id': instance.inventoryId,
      'created_by': instance.createdBy,
      'pricing_gp_type': instance.pricingGpType,
      'gp_percentage': instance.gpPercentage,
      'unit_cost': instance.unitCost,
      'selling_price': instance.sellingPrice,
      'is_active': instance.isActive,
    };
