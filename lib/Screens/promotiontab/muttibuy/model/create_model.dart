import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/discount/model/promotion_discount_model.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';

part 'create_model.freezed.dart';
part 'create_model.g.dart';
@freezed
class PromotionMultiBuyCreationModel with _$PromotionMultiBuyCreationModel{
  const factory PromotionMultiBuyCreationModel({
    final int? id,
    final String? name,
    final String? description,
    final String? image,
    final List<Segment>? segments,

    @JsonKey(name: "available_customer_groups") final List<AvailableCustomerGroups>? availableCustomerGroups,
    @JsonKey(name: "get_lines") final List<MultibuyVariantListModel>? getLines,
    @JsonKey(name: "buy_lines") final List<MultibuyVariantListModel>? buyLines,
    @JsonKey(name: "offer_period_id") final int? offerPeriodId,
    @JsonKey(name: "offer_group_id") final int? offerGroupId,
    @JsonKey(name: "maximum_quantity") final int? maximumQuantity,
    @JsonKey(name: "multibuy_applied_to_id") final int? multiBuyAppliedToID,
    @JsonKey(name: "selling_price") final double? sellingPrice,
    @JsonKey(name: "total_cost") final double? totalCost,
    @JsonKey(name: "display_name") final String ? displayName,
    @JsonKey(name: "inventory_id") final String ? inventoryId,
    @JsonKey(name: "multibuy_applied_to_name") final String ? multiBuyAppliedToName,
    @JsonKey(name: "created_by") final String ? createdBuy,
    @JsonKey(name: "multibuy_applied_to") final String ? multibuyAppliedTo,
    @JsonKey(name: "multibuy_applied_to_code") final String ? multibuyAppliedToCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_available_for_all",defaultValue: false) final bool? isAvailableFor,


  }) = _PromotionMultiBuyCreationModel;
  factory PromotionMultiBuyCreationModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionMultiBuyCreationModelFromJson(json);
}



@freezed
class PromotionMultiBuyReadModel with _$PromotionMultiBuyReadModel{
  const factory PromotionMultiBuyReadModel({
    final int? id,
    final String? name,
    final String? description,
    final String? image,
    final List<Segment>? segments,

    @JsonKey(name: "available_customer_groups") final List<AvailableCustomerGroups>? availableCustomerGroups,
    @JsonKey(name: "get_lines") final List<MultibuyVariantListModel>? getLines,
    @JsonKey(name: "buy_lines") final List<MultibuyVariantListModel>? buyLines,
    @JsonKey(name: "offer_period_id") final int? offerPeriodId,
    @JsonKey(name: "offer_period_name") final String? offerPeriodName,
    @JsonKey(name: "multi_code") final String? multiCode,
    @JsonKey(name: "offer_group_id") final int? offerGroupId,
    @JsonKey(name: "maximum_quantity") final int? maximumQuantity,
    @JsonKey(name: "multibuy_applied_to_id") final String? multiBuyAppliedToID,
    @JsonKey(name: "selling_price") final double? sellingPrice,
    @JsonKey(name: "total_cost") final double? totalCost,
    @JsonKey(name: "display_name") final String ? displayName,
    @JsonKey(name: "inventory_id") final String ? inventoryId,
    @JsonKey(name: "multibuy_applied_to_name") final String ? multiBuyAppliedToName,
    @JsonKey(name: "created_by") final String ? createdBuy,
    @JsonKey(name: "multibuy_applied_to") final String ? multibuyAppliedTo,
    @JsonKey(name: "multibuy_applied_to_code") final String ? multibuyAppliedToCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_available_for_all",defaultValue: false) final bool? isAvailableFor,


  }) = _PromotionMultiBuyReadModel;
  factory PromotionMultiBuyReadModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionMultiBuyReadModelFromJson(json);
}
