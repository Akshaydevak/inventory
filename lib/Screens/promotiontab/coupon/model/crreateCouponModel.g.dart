// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crreateCouponModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PromotionCouponCreationModel _$$_PromotionCouponCreationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PromotionCouponCreationModel(
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => Segment.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
      description: json['description'] as String?,
      line: (json['line'] as List<dynamic>?)
          ?.map((e) => VariantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      inventoryId: json['inventory_id'] as String?,
      displayName: json['display_name'] as String?,
      updatedAt: json['updated_at'] as String?,
      couponCode: json['coupon_code'] as String?,
      couponApplyingOn: json['coupon_applying_on'] as String?,
      couponApplyingOnId: json['coupon_applying_on_id'] as String?,
      offerPeriodName: json['offer_period_name'] as String?,
      couponApplyingOnCode: json['coupon_applying_on_code'] as String?,
      couponApplyingOnName: json['coupon_applying_on_name'] as String?,
      couponAppliedTo: json['coupon_applied_to'] as String?,
      couponAppliedToId: json['couon_applied_to_id'] as String?,
      couponAppliedToCode: json['coupon_applied_to_code'] as String?,
      couponAppliedToName: json['coupon_applied_to_name'] as String?,
      basedOn: json['based_on'] as String?,
      couponType: json['coupon_type'] as String?,
      priceOrPercentage: (json['price_or_percentage'] as num?)?.toDouble(),
      maximumCount: json['maximum_count'] as int?,
      offerPeriodId: json['offer_period_id'] as int?,
      isAvailableToAll: json['is_available_to_all'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      canApplyMultipleTimes: json['can_apply_multiple_times'] as bool? ?? false,
      canApplyTogether: json['can_apply_together'] as bool? ?? false,
      totalValue: json['total_value'] as int?,
      createdBy: json['created_by'] as String?,
      availableCustomerGroups:
          (json['available_customer_groups'] as List<dynamic>?)
              ?.map((e) =>
                  AvailableCustomerGroups.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_PromotionCouponCreationModelToJson(
        _$_PromotionCouponCreationModel instance) =>
    <String, dynamic>{
      'segments': instance.segments,
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
      'description': instance.description,
      'line': instance.line,
      'inventory_id': instance.inventoryId,
      'display_name': instance.displayName,
      'updated_at': instance.updatedAt,
      'coupon_code': instance.couponCode,
      'coupon_applying_on': instance.couponApplyingOn,
      'coupon_applying_on_id': instance.couponApplyingOnId,
      'offer_period_name': instance.offerPeriodName,
      'coupon_applying_on_code': instance.couponApplyingOnCode,
      'coupon_applying_on_name': instance.couponApplyingOnName,
      'coupon_applied_to': instance.couponAppliedTo,
      'couon_applied_to_id': instance.couponAppliedToId,
      'coupon_applied_to_code': instance.couponAppliedToCode,
      'coupon_applied_to_name': instance.couponAppliedToName,
      'based_on': instance.basedOn,
      'coupon_type': instance.couponType,
      'price_or_percentage': instance.priceOrPercentage,
      'maximum_count': instance.maximumCount,
      'offer_period_id': instance.offerPeriodId,
      'is_available_to_all': instance.isAvailableToAll,
      'is_active': instance.isActive,
      'can_apply_multiple_times': instance.canApplyMultipleTimes,
      'can_apply_together': instance.canApplyTogether,
      'total_value': instance.totalValue,
      'created_by': instance.createdBy,
      'available_customer_groups': instance.availableCustomerGroups,
    };
