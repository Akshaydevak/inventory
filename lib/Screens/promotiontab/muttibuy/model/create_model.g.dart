// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionMultiBuyCreationModel _$$_PromotionMultiBuyCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionMultiBuyCreationModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableCustomerGroups:
          (json['available_customer_groups'] as List<dynamic>?)
              ?.map((e) =>
                  AvailableCustomerGroups.fromJson(e as Map<String, dynamic>))
              .toList(),
      getLines: (json['get_lines'] as List<dynamic>?)
          ?.map((e) =>
              MultibuyVariantListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      buyLines: (json['buy_lines'] as List<dynamic>?)
          ?.map((e) =>
              MultibuyVariantListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      offerPeriodId: json['offer_period_id'] as int?,
      offerGroupId: json['offer_group_id'] as int?,
      maximumQuantity: json['maximum_quantity'] as int?,
      multiBuyAppliedToID: json['multibuy_applied_to_id'] as int?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      totalCost: (json['total_cost'] as num?)?.toDouble(),
      displayName: json['display_name'] as String?,
      inventoryId: json['inventory_id'] as String?,
      multiBuyAppliedToName: json['multibuy_applied_to_name'] as String?,
      createdBuy: json['created_by'] as String?,
      multibuyAppliedTo: json['multibuy_applied_to'] as String?,
      multibuyAppliedToCode: json['multibuy_applied_to_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      isAvailableFor: json['is_available_for_all'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PromotionMultiBuyCreationModelToJson(
        _$_PromotionMultiBuyCreationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'segments': instance.segments,
      'available_customer_groups': instance.availableCustomerGroups,
      'get_lines': instance.getLines,
      'buy_lines': instance.buyLines,
      'offer_period_id': instance.offerPeriodId,
      'offer_group_id': instance.offerGroupId,
      'maximum_quantity': instance.maximumQuantity,
      'multibuy_applied_to_id': instance.multiBuyAppliedToID,
      'selling_price': instance.sellingPrice,
      'total_cost': instance.totalCost,
      'display_name': instance.displayName,
      'inventory_id': instance.inventoryId,
      'multibuy_applied_to_name': instance.multiBuyAppliedToName,
      'created_by': instance.createdBuy,
      'multibuy_applied_to': instance.multibuyAppliedTo,
      'multibuy_applied_to_code': instance.multibuyAppliedToCode,
      'is_active': instance.isActive,
      'is_available_for_all': instance.isAvailableFor,
    };

_$_PromotionMultiBuyReadModel _$$_PromotionMultiBuyReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionMultiBuyReadModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableCustomerGroups:
          (json['available_customer_groups'] as List<dynamic>?)
              ?.map((e) =>
                  AvailableCustomerGroups.fromJson(e as Map<String, dynamic>))
              .toList(),
      getLines: (json['get_lines'] as List<dynamic>?)
          ?.map((e) =>
              MultibuyVariantListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      buyLines: (json['buy_lines'] as List<dynamic>?)
          ?.map((e) =>
              MultibuyVariantListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      offerPeriodId: json['offer_period_id'] as int?,
      offerPeriodName: json['offer_period_name'] as String?,
      multiCode: json['multi_code'] as String?,
      offerGroupId: json['offer_group_id'] as int?,
      maximumQuantity: json['maximum_quantity'] as int?,
      multiBuyAppliedToID: json['multibuy_applied_to_id'] as String?,
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      totalCost: (json['total_cost'] as num?)?.toDouble(),
      displayName: json['display_name'] as String?,
      inventoryId: json['inventory_id'] as String?,
      multiBuyAppliedToName: json['multibuy_applied_to_name'] as String?,
      createdBuy: json['created_by'] as String?,
      multibuyAppliedTo: json['multibuy_applied_to'] as String?,
      multibuyAppliedToCode: json['multibuy_applied_to_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      isAvailableFor: json['is_available_for_all'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PromotionMultiBuyReadModelToJson(
        _$_PromotionMultiBuyReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'segments': instance.segments,
      'available_customer_groups': instance.availableCustomerGroups,
      'get_lines': instance.getLines,
      'buy_lines': instance.buyLines,
      'offer_period_id': instance.offerPeriodId,
      'offer_period_name': instance.offerPeriodName,
      'multi_code': instance.multiCode,
      'offer_group_id': instance.offerGroupId,
      'maximum_quantity': instance.maximumQuantity,
      'multibuy_applied_to_id': instance.multiBuyAppliedToID,
      'selling_price': instance.sellingPrice,
      'total_cost': instance.totalCost,
      'display_name': instance.displayName,
      'inventory_id': instance.inventoryId,
      'multibuy_applied_to_name': instance.multiBuyAppliedToName,
      'created_by': instance.createdBuy,
      'multibuy_applied_to': instance.multibuyAppliedTo,
      'multibuy_applied_to_code': instance.multibuyAppliedToCode,
      'is_active': instance.isActive,
      'is_available_for_all': instance.isAvailableFor,
    };
