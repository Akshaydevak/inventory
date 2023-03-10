// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bogo_creation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionBogoCreationModel _$$_PromotionBogoCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionBogoCreationModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      lines: (json['lines'] as List<dynamic>?)
          ?.map((e) => VariantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      inventoryId: json['inventory_id'] as String?,
      basedOn: json['based_on'] as String?,
      offerAppliedTo: json['offer_applied_to'] as String?,
      offerAppliedToId: json['offer_applied_to_id'] as String?,
      offerAppliedToCode: json['offer_applied_to_code'] as String?,
      bogoApplyingOn: json['bogo_applying_on'] as String?,
      bogoApplyingOnName: json['bogo_applying_on_name'] as String?,
      createdBy: json['created_by'] as String?,
      getCount: json['get_count'] as int?,
      bogoApplyingOnId: json['bogo_applying_on_id'] as int?,
      bogoApplyingOnCode: json['bogo_applying_on_code'] as String?,
      buyCount: json['buy_count'] as int?,
      maximumCount: json['maximum_count'] as int?,
      offerPeriodId: json['offer_period_id'] as int?,
      offerGroupId: json['offer_group_id'] as int?,
      countPricePercentage: (json['count_price_percentage'] as List<dynamic>?)
          ?.map((e) =>
              CountPricePercentageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isActive: json['is_active'] as bool? ?? false,
      isAvailableForAll: json['is_available_for_all'] as bool? ?? false,
      availableCustomerGroups:
          (json['available_customer_groups'] as List<dynamic>?)
              ?.map((e) =>
                  AvailableCustomerGroups.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_PromotionBogoCreationModelToJson(
        _$_PromotionBogoCreationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'segments': instance.segments,
      'lines': instance.lines,
      'inventory_id': instance.inventoryId,
      'based_on': instance.basedOn,
      'offer_applied_to': instance.offerAppliedTo,
      'offer_applied_to_id': instance.offerAppliedToId,
      'offer_applied_to_code': instance.offerAppliedToCode,
      'bogo_applying_on': instance.bogoApplyingOn,
      'bogo_applying_on_name': instance.bogoApplyingOnName,
      'created_by': instance.createdBy,
      'get_count': instance.getCount,
      'bogo_applying_on_id': instance.bogoApplyingOnId,
      'bogo_applying_on_code': instance.bogoApplyingOnCode,
      'buy_count': instance.buyCount,
      'maximum_count': instance.maximumCount,
      'offer_period_id': instance.offerPeriodId,
      'offer_group_id': instance.offerGroupId,
      'count_price_percentage': instance.countPricePercentage,
      'is_active': instance.isActive,
      'is_available_for_all': instance.isAvailableForAll,
      'available_customer_groups': instance.availableCustomerGroups,
    };

_$_PromotionBogoReadModel _$$_PromotionBogoReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionBogoReadModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      lines: (json['lines'] as List<dynamic>?)
          ?.map((e) => VariantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      inventoryId: json['inventory_id'] as String?,
      bogoCode: json['bogo_code'] as String?,
      basedOn: json['based_on'] as String?,
      offerAppliedTo: json['offer_applied_to'] as String?,
      offerAppliedToId: json['offer_applied_to_id'] as String?,
      offerAppliedToCode: json['offer_applied_to_code'] as String?,
      offerPeriodName: json['offer_period_name'] as String?,
      bogoApplyingOn: json['bogo_applying_on'] as String?,
      bogoApplyingOnName: json['bogo_applying_on_name'] as String?,
      createdBy: json['created_by'] as String?,
      getCount: json['get_count'] as int?,
      bogoApplyingOnId: json['bogo_applying_on_id'] as int?,
      bogoApplyingOnCode: json['bogo_applying_on_code'] as String?,
      buyCount: json['buy_count'] as int?,
      maximumCount: json['maximum_count'] as int?,
      offerPeriodId: json['offer_period_id'] as int?,
      offerGroupId: json['offer_group_id'] as int?,
      countPricePercentage: (json['count_price_percentage'] as List<dynamic>?)
          ?.map((e) =>
              CountPricePercentageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isActive: json['is_active'] as bool? ?? false,
      isAvailableForAll: json['is_available_for_all'] as bool? ?? false,
      availableCustomerGroups:
          (json['available_customer_groups'] as List<dynamic>?)
              ?.map((e) =>
                  AvailableCustomerGroups.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_PromotionBogoReadModelToJson(
        _$_PromotionBogoReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'segments': instance.segments,
      'lines': instance.lines,
      'inventory_id': instance.inventoryId,
      'bogo_code': instance.bogoCode,
      'based_on': instance.basedOn,
      'offer_applied_to': instance.offerAppliedTo,
      'offer_applied_to_id': instance.offerAppliedToId,
      'offer_applied_to_code': instance.offerAppliedToCode,
      'offer_period_name': instance.offerPeriodName,
      'bogo_applying_on': instance.bogoApplyingOn,
      'bogo_applying_on_name': instance.bogoApplyingOnName,
      'created_by': instance.createdBy,
      'get_count': instance.getCount,
      'bogo_applying_on_id': instance.bogoApplyingOnId,
      'bogo_applying_on_code': instance.bogoApplyingOnCode,
      'buy_count': instance.buyCount,
      'maximum_count': instance.maximumCount,
      'offer_period_id': instance.offerPeriodId,
      'offer_group_id': instance.offerGroupId,
      'count_price_percentage': instance.countPricePercentage,
      'is_active': instance.isActive,
      'is_available_for_all': instance.isAvailableForAll,
      'available_customer_groups': instance.availableCustomerGroups,
    };
