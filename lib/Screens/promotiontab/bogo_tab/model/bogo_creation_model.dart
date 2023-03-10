import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/buy_more/model/create_model.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';

part 'bogo_creation_model.freezed.dart';
part 'bogo_creation_model.g.dart';
@freezed
class PromotionBogoCreationModel with _$PromotionBogoCreationModel{
  const factory PromotionBogoCreationModel({
    final int? id,
    final String? name,
    final String? description,
    final String? image,
    final List<Segment>? segments,
    final List<VariantModel>? lines,

    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "based_on") final String? basedOn,
    @JsonKey(name: "offer_applied_to") final String? offerAppliedTo,
    @JsonKey(name: "offer_applied_to_id") final String? offerAppliedToId,
    @JsonKey(name: "offer_applied_to_code") final String? offerAppliedToCode,
    @JsonKey(name: "bogo_applying_on") final String? bogoApplyingOn,
    @JsonKey(name: "bogo_applying_on_name") final String? bogoApplyingOnName,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "get_count") final int? getCount,
    @JsonKey(name: "bogo_applying_on_id") final int? bogoApplyingOnId,
    @JsonKey(name: "bogo_applying_on_code") final String? bogoApplyingOnCode,
    @JsonKey(name: "buy_count") final int? buyCount,
    @JsonKey(name: "maximum_count") final int? maximumCount,
    @JsonKey(name: "offer_period_id") final int? offerPeriodId,
    @JsonKey(name: "offer_group_id") final int? offerGroupId,

    @JsonKey(name: "count_price_percentage") final List<CountPricePercentageModel>? countPricePercentage,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_available_for_all",defaultValue: false) final bool? isAvailableForAll,

    @JsonKey(name: "available_customer_groups") final List<AvailableCustomerGroups>? availableCustomerGroups,

    // @JsonKey(name: "offer_lines") final List<SaleLinesDiscount>? offerLines,

  }) = _PromotionBogoCreationModel;
  factory PromotionBogoCreationModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionBogoCreationModelFromJson(json);
}



@freezed
class PromotionBogoReadModel with _$PromotionBogoReadModel{
  const factory PromotionBogoReadModel({
    final int? id,
    final String? name,
    final String? description,
    final String? image,
    final List<Segment>? segments,
    final List<VariantModel>? lines,

    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "bogo_code") final String? bogoCode,
    @JsonKey(name: "based_on") final String? basedOn,
    @JsonKey(name: "offer_applied_to") final String? offerAppliedTo,
    @JsonKey(name: "offer_applied_to_id") final String? offerAppliedToId,
    @JsonKey(name: "offer_applied_to_code") final String? offerAppliedToCode,
    @JsonKey(name: "offer_period_name") final String? offerPeriodName,
    @JsonKey(name: "bogo_applying_on") final String? bogoApplyingOn,
    @JsonKey(name: "bogo_applying_on_name") final String? bogoApplyingOnName,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "get_count") final int? getCount,
    @JsonKey(name: "bogo_applying_on_id") final int? bogoApplyingOnId,
    @JsonKey(name: "bogo_applying_on_code") final String? bogoApplyingOnCode,
    @JsonKey(name: "buy_count") final int? buyCount,
    @JsonKey(name: "maximum_count") final int? maximumCount,
    @JsonKey(name: "offer_period_id") final int? offerPeriodId,
    @JsonKey(name: "offer_group_id") final int? offerGroupId,

    @JsonKey(name: "count_price_percentage") final List<CountPricePercentageModel>? countPricePercentage,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_available_for_all",defaultValue: false) final bool? isAvailableForAll,

    @JsonKey(name: "available_customer_groups") final List<AvailableCustomerGroups>? availableCustomerGroups,

    // @JsonKey(name: "offer_lines") final List<SaleLinesDiscount>? offerLines,

  }) = _PromotionBogoReadModel;
  factory PromotionBogoReadModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionBogoReadModelFromJson(json);
}



