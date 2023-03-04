// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionBuyMoreCreationModel _$$_PromotionBuyMoreCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionBuyMoreCreationModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
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
      buyMoreCode: json['buy_more_code'] as String?,
      offerPeriodId: json['offer_period_id'] as int?,
      offerGroupId: json['offer_group_id'] as int?,
      offerAppliedTo: json['offer_applied_to'] as String?,
      offerAppliedToId: json['offer_applied_to_id'] as int?,
      offerAppliedToCode: json['offer_applied_to_code'] as String?,
      offerPeriodName: json['offer_period_name'] as String?,
      offerGroupName: json['offer_group_name'] as String?,
      buyMoreApplyingOn: json['buy_more_applying_on'] as String?,
      buyMoreApplyingOnName: json['buy_more_applying_on_name'] as String?,
      buyMoreApplyingOnId: json['buy_more_applying_on_id'] as int?,
      buyMoreApplyingOnCode: json['buy_more_applying_on_code'] as String?,
      countPricePercentage: (json['count_price_percentage'] as List<dynamic>?)
          ?.map((e) =>
              CountPricePercentageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isActive: json['is_active'] as bool? ?? false,
      isAvailableForAll: json['is_available_for_all'] as bool? ?? false,
      createdBy: json['created_by'] as String?,
      availableCustomerGroups:
          (json['available_customer_groups'] as List<dynamic>?)
              ?.map((e) =>
                  AvailableCustomerGroups.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_PromotionBuyMoreCreationModelToJson(
        _$_PromotionBuyMoreCreationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'segments': instance.segments,
      'lines': instance.lines,
      'inventory_id': instance.inventoryId,
      'based_on': instance.basedOn,
      'buy_more_code': instance.buyMoreCode,
      'offer_period_id': instance.offerPeriodId,
      'offer_group_id': instance.offerGroupId,
      'offer_applied_to': instance.offerAppliedTo,
      'offer_applied_to_id': instance.offerAppliedToId,
      'offer_applied_to_code': instance.offerAppliedToCode,
      'offer_period_name': instance.offerPeriodName,
      'offer_group_name': instance.offerGroupName,
      'buy_more_applying_on': instance.buyMoreApplyingOn,
      'buy_more_applying_on_name': instance.buyMoreApplyingOnName,
      'buy_more_applying_on_id': instance.buyMoreApplyingOnId,
      'buy_more_applying_on_code': instance.buyMoreApplyingOnCode,
      'count_price_percentage': instance.countPricePercentage,
      'is_active': instance.isActive,
      'is_available_for_all': instance.isAvailableForAll,
      'created_by': instance.createdBy,
      'available_customer_groups': instance.availableCustomerGroups,
    };

_$_CountPricePercentageModel _$$_CountPricePercentageModelFromJson(
        Map<String, dynamic> json) =>
    _$_CountPricePercentageModel(
      count: json['count'] as int?,
      pricePercentage: (json['price_percentage'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool? ?? false,
      updateCheck: json['updateCheck'] as bool? ?? true,
    );

Map<String, dynamic> _$$_CountPricePercentageModelToJson(
        _$_CountPricePercentageModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'price_percentage': instance.pricePercentage,
      'is_active': instance.isActive,
      'updateCheck': instance.updateCheck,
    };
