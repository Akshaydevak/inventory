
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/promotiontab/sale/model/offer_period_list.dart';

part 'promotion_discount_model.freezed.dart';
part 'promotion_discount_model.g.dart';
@freezed
class PromotionDiscountCreationModel with _$PromotionDiscountCreationModel{
  const factory PromotionDiscountCreationModel({
    final int? id,
    final String? name,
    final String? description,
    final String? image,
    final List<Segment>? segments,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "based_on") final String? basedOn,
    @JsonKey(name: "offer_period_id") final int? offerPeriodId,
    @JsonKey(name: "offer_group_id") final int? offerGroupId,
    @JsonKey(name: "offer_applied_to") final String? offerAppliedTo,
    @JsonKey(name: "offer_applied_to_id") final int? offerAppliedToId,
    @JsonKey(name: "offer_applied_to_code") final String? offerAppliedToCode,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "available_customer_groups") final List<AvailableCustomerGroups>? availableCustomerGroups,
    @JsonKey(name: "discount_percentage_or_price") final double? discountPercentageOrPrice,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "is_available_for_all",defaultValue: false) final bool? isAvailableFor,
    @JsonKey(name: "offer_lines") final List<SaleLinesDiscount>? offerLines,

  }) = _PromotionDiscountCreationModel;
  factory PromotionDiscountCreationModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionDiscountCreationModelFromJson(json);
}







@freezed
class PromotionDiscountReadModel with _$PromotionDiscountReadModel{
  const factory PromotionDiscountReadModel({
    final int? id,
    final String? name,
    final String? description,
    final String? image,
    final String? code,
    final String? title,
    final List<Segment>? segments,
    @JsonKey(name: "offer_period_name") final String? offerPeriodName,
    @JsonKey(name: "offer_group_name") final String? offerGroupName,
    @JsonKey(name: "inventory_id") final String? inventoryId,

    @JsonKey(name: "based_on") final String? basedOn,
    @JsonKey(name: "offer_period_id") final int? offerPeriodId,
    @JsonKey(name: "discount_percentage_or_price") final int? discountPercentageOrPrice,
    @JsonKey(name: "offer_applied_to_id") final String? offerAppliedToId,
    @JsonKey(name: "offer_applied_to") final String? offerAppliedTo,
    @JsonKey(name: "offer_applied_to_code") final String? offerAppliedToCode,
    @JsonKey(name: "discount_code") final String? discountCode,
    @JsonKey(name: "offer_lines") final List<SaleLinesDiscount>? offerLines,
    @JsonKey(name:"offer_group_id") final int? offerGroupId,
    @JsonKey(name:"is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name:"is_available_for_all",defaultValue: false) final bool? isAvailableForAll,

  }) = _PromotionDiscountReadModel;
  factory PromotionDiscountReadModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionDiscountReadModelFromJson(json);
}


@freezed
class CustomGroupReadModel with _$CustomGroupReadModel{
  const factory CustomGroupReadModel({
    final String? code,
    final String? name,


  }) = _CustomGroupReadModel;
  factory CustomGroupReadModel.fromJson(Map<String, dynamic> json) =>
      _$CustomGroupReadModelFromJson(json);
}

@freezed
class OfferLines with _$OfferLines{
  const factory OfferLines({
    final int? id,
    final String? title,
    final String? priority,

    @JsonKey(name: "customer_group_id") final int? customerGroupId,
    @JsonKey(name: "offer_product_group_code") final String? offerProductGroupCode,
    @JsonKey(name: "type_applying") final String? typeApplying,
    @JsonKey(name: "type_id") final int? typeId,
    @JsonKey(name: "maximum_qty") final int? maximumQuantity,
    @JsonKey(name: "offer_product_group_id") final int? offerProductGroupId,

    @JsonKey(name: "override_priority",defaultValue: false) final bool? overridePriority,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "type_code",) final String? typeCode,



  }) = _OfferLines;
  factory OfferLines.fromJson(Map<String, dynamic> json) =>
      _$OfferLinesFromJson(json);
}

@freezed
class AvailableCustomerGroups with _$AvailableCustomerGroups{
  const factory AvailableCustomerGroups({

    @JsonKey(name: "customer_group_id") final String? customerGroupId,
    @JsonKey(name: "customer_group_cod") final String? customerGroupCode,
    @JsonKey(name: "customer_group_name") final String? customerGroupName,



  }) = _AvailableCustomerGroups;
  factory AvailableCustomerGroups.fromJson(Map<String, dynamic> json) =>
      _$AvailableCustomerGroupsFromJson(json);
}
@freezed
class SaleLinesDiscount with _$SaleLinesDiscount{
  const factory SaleLinesDiscount({
    final int? id,
    final String? image,
    final String? imageName,
    final String? title,
  final List<VariantsLinesDiscount>? variants,



    @JsonKey(name: "type_id") final int? typeId,
    @JsonKey(name: "type_Name") final String? typeName,
    @JsonKey(name: "maximum_qty") final int? maximumQuantity,
    @JsonKey(name: "type_applying") final String? typeApplying,
    @JsonKey(name: "addedd_variants")   final List<VariantsLinesDiscount>? addedVariant,
    @JsonKey(name: "deleted_variants")   final List<VariantsLinesDiscount>? deletedVariants,

    @JsonKey(name: "type_code") final String? typeCode,
    @JsonKey(name: "offer_group_code") final String? offerGroupCode,
    @JsonKey(name: "offer_name") final String? offerName,
    @JsonKey(name: "offer_product_group_code") final String? offerProductGroupCode,
    @JsonKey(name: "offer_product_group_id") final int? offerProductGroupId,
    @JsonKey(name: "type_data") final String? typeData,
    @JsonKey(name: "updateCheck",defaultValue: false) final bool? updateCheck,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,

  }) = _SaleLinesDiscount;
  factory SaleLinesDiscount.fromJson(Map<String, dynamic> json) =>
      _$SaleLinesDiscountFromJson(json);




}
@freezed
class VariantsLinesDiscount with _$VariantsLinesDiscount{
  const factory VariantsLinesDiscount({
    final int? id,
    final String? name,
    final Barcode? barcode,
    @JsonKey(name: "variant_id") final int? variantIdd,
    @JsonKey(name: "variant_name") final String? variantName,
    @JsonKey(name: "variant_code") final String? variantCode,




  }) = _VariantsLinesDiscount;
  factory VariantsLinesDiscount.fromJson(Map<String, dynamic> json) =>
      _$VariantsLinesDiscountFromJson(json);




}
