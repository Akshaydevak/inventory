import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';

part 'create_model.freezed.dart';
part 'create_model.g.dart';
@freezed
class PromotionBuyMoreCreationModel with _$PromotionBuyMoreCreationModel{
  const factory PromotionBuyMoreCreationModel({
    final int? id,
    final String? title,
    final String? description,
    final String? image,
    final List<Segment>? segments,
    final List<VariantModel>? lines,

    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "based_on") final String? basedOn,
    @JsonKey(name: "buy_more_code") final String? buyMoreCode,
    @JsonKey(name: "offer_period_id") final int? offerPeriodId,
    @JsonKey(name: "offer_group_id") final int? offerGroupId,
    @JsonKey(name: "offer_applied_to") final String? offerAppliedTo,
    @JsonKey(name: "offer_applied_to_id") final int? offerAppliedToId,
    @JsonKey(name: "offer_applied_to_code") final String? offerAppliedToCode,
    @JsonKey(name: "offer_period_name") final String? offerPeriodName,
    @JsonKey(name: "offer_group_name") final String? offerGroupName,

    @JsonKey(name: "buy_more_applying_on") final String? buyMoreApplyingOn,
    @JsonKey(name: "buy_more_applying_on_name") final String? buyMoreApplyingOnName,
    @JsonKey(name: "buy_more_applying_on_id") final int? buyMoreApplyingOnId,

    @JsonKey(name: "buy_more_applying_on_code") final String? buyMoreApplyingOnCode,
    @JsonKey(name: "count_price_percentage") final List<CountPricePercentageModel>? countPricePercentage,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_available_for_all",defaultValue: false) final bool? isAvailableForAll,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "available_customer_groups") final List<AvailableCustomerGroups>? availableCustomerGroups,

    // @JsonKey(name: "offer_lines") final List<SaleLinesDiscount>? offerLines,

  }) = _PromotionBuyMoreCreationModel;
  factory PromotionBuyMoreCreationModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionBuyMoreCreationModelFromJson(json);
}


@freezed
class CountPricePercentageModel with _$CountPricePercentageModel{
  const factory CountPricePercentageModel({
    final int? count,

    @JsonKey(name: "price_percentage") final double? pricePercentage,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "updateCheck",defaultValue: true) final bool? updateCheck,

    // @JsonKey(name: "available_customer_groups") final List<AvailableCustomerGroups>? availableCustomerGroups,

    // @JsonKey(name: "offer_lines") final List<SaleLinesDiscount>? offerLines,

  }) = _CountPricePercentageModel;
  factory CountPricePercentageModel.fromJson(Map<String, dynamic> json) =>
      _$CountPricePercentageModelFromJson(json);
}
