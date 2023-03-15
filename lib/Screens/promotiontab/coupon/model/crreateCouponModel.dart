import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/buy_more/model/create_model.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';

part 'crreateCouponModel.freezed.dart';
part 'crreateCouponModel.g.dart';
@freezed
class PromotionCouponCreationModel with _$PromotionCouponCreationModel{
  const factory PromotionCouponCreationModel({

    final List<Segment>? segments,
    final String? name,
    final String? image,
    final int? id,
    final String? description,
    final List<VariantModel>? line,

    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "display_name") final String? displayName,
    @JsonKey(name: "updated_at") final String? updatedAt,
    @JsonKey(name: "coupon_code") final String? couponCode,
    @JsonKey(name: "coupon_applying_on") final String? couponApplyingOn,
    @JsonKey(name: "coupon_applying_on_id") final String? couponApplyingOnId,
    @JsonKey(name: "offer_period_name") final String? offerPeriodName,
    @JsonKey(name: "coupon_applying_on_code") final String? couponApplyingOnCode,
    @JsonKey(name: "coupon_applying_on_name") final String? couponApplyingOnName,
    @JsonKey(name: "coupon_applied_to") final String? couponAppliedTo,
    @JsonKey(name: "couon_applied_to_id") final String? couponAppliedToId,
    @JsonKey(name: "coupon_applied_to_code") final String? couponAppliedToCode,
    @JsonKey(name: "coupon_applied_to_name") final String? couponAppliedToName,
    @JsonKey(name: "based_on") final String? basedOn,
    @JsonKey(name: "coupon_type") final String? couponType,
    @JsonKey(name: "price_or_percentage") final double? priceOrPercentage,
    @JsonKey(name: "maximum_count") final int? maximumCount,
    @JsonKey(name: "offer_period_id") final int? offerPeriodId,
    @JsonKey(name: "is_available_to_all",defaultValue: false) final bool? isAvailableToAll,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "can_apply_multiple_times",defaultValue: false) final bool? canApplyMultipleTimes,
    @JsonKey(name: "can_apply_together",defaultValue: false) final bool? canApplyTogether,
    @JsonKey(name: "total_value") final int? totalValue,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "available_customer_groups") final List<AvailableCustomerGroups>? availableCustomerGroups,

    // @JsonKey(name: "offer_lines") final List<SaleLinesDiscount>? offerLines,

  }) = _PromotionCouponCreationModel;
  factory PromotionCouponCreationModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionCouponCreationModelFromJson(json);
}