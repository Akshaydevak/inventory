// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'costingmethodtypelisting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CostingMetodTypePostModel _$$_CostingMetodTypePostModelFromJson(
        Map<String, dynamic> json) =>
    _$_CostingMetodTypePostModel(
      description: json['description'] as String?,
      id: json['id'] as int?,
      typeCode: json['type_code'] as String?,
      typeName: json['type_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CostingMetodTypePostModelToJson(
        _$_CostingMetodTypePostModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'type_code': instance.typeCode,
      'type_name': instance.typeName,
      'is_active': instance.isActive,
    };

_$_CostingCreatePostModel _$$_CostingCreatePostModelFromJson(
        Map<String, dynamic> json) =>
    _$_CostingCreatePostModel(
      description: json['description'] as String?,
      id: json['id'] as int?,
      methodTypeId: json['method_type_id'] as int?,
      costingMethodTypeName: json['costing_method_type_name'] as String?,
      methodCode: json['method_code'] as String?,
      methodName: json['method_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CostingCreatePostModelToJson(
        _$_CostingCreatePostModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'method_type_id': instance.methodTypeId,
      'costing_method_type_name': instance.costingMethodTypeName,
      'method_code': instance.methodCode,
      'method_name': instance.methodName,
      'is_active': instance.isActive,
    };

_$_PricingGroupListModel _$$_PricingGroupListModelFromJson(
        Map<String, dynamic> json) =>
    _$_PricingGroupListModel(
      description: json['description'] as String?,
      id: json['id'] as int?,
      pricingTypeCode: json['pricing_type_code'] as String?,
      createdBy: json['created_by'] as String?,
      pricingTypeName: json['pricing_type_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PricingGroupListModelToJson(
        _$_PricingGroupListModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'pricing_type_code': instance.pricingTypeCode,
      'created_by': instance.createdBy,
      'pricing_type_name': instance.pricingTypeName,
      'is_active': instance.isActive,
    };

_$_PricingTypeListModel _$$_PricingTypeListModelFromJson(
        Map<String, dynamic> json) =>
    _$_PricingTypeListModel(
      description: json['description'] as String?,
      pricingCroupCode: json['pricing_group_code'] as String?,
      pricingTypeId: json['pricing_type_id'] as int?,
      customerGrouCode: json['customer_group_code'] as String?,
      createdBy: json['created_by'] as String?,
      pricingGroupName: json['pricing_group_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PricingTypeListModelToJson(
        _$_PricingTypeListModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'pricing_group_code': instance.pricingCroupCode,
      'pricing_type_id': instance.pricingTypeId,
      'customer_group_code': instance.customerGrouCode,
      'created_by': instance.createdBy,
      'pricing_group_name': instance.pricingGroupName,
      'is_active': instance.isActive,
    };

_$_StockPartitionModel _$$_StockPartitionModelFromJson(
        Map<String, dynamic> json) =>
    _$_StockPartitionModel(
      description: json['description'] as String?,
      name: json['name'] as String?,
      partitionCode: json['partition_code'] as String?,
      inventoryId: json['inventory_id'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_StockPartitionModelToJson(
        _$_StockPartitionModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'partition_code': instance.partitionCode,
      'inventory_id': instance.inventoryId,
      'is_active': instance.isActive,
    };

_$_ListingChnanelTableModel _$$_ListingChnanelTableModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListingChnanelTableModel(
      description: json['description'] as String?,
      id: json['id'] as int?,
      gpPrecentage: (json['gp_percentage'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      pricingGroupId: json['pricing_group_id'] as int?,
      pricingTypeName: json['pricing_type_name'] as String?,
      pricingGroupName: json['pricing_group_name'] as String?,
      pricingGPType: json['pricing_gp_type'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ListingChnanelTableModelToJson(
        _$_ListingChnanelTableModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'gp_percentage': instance.gpPrecentage,
      'selling_price': instance.sellingPrice,
      'pricing_group_id': instance.pricingGroupId,
      'pricing_type_name': instance.pricingTypeName,
      'pricing_group_name': instance.pricingGroupName,
      'pricing_gp_type': instance.pricingGPType,
      'is_active': instance.isActive,
    };
