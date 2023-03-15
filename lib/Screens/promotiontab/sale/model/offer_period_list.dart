import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_period_list.freezed.dart';
part 'offer_period_list.g.dart';
@freezed
class OfferPeriodList with _$OfferPeriodList{
  const factory OfferPeriodList({
    final int? id,
    final String? name,
    final String? code,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "offer_period_code") final String? offerPeriodCode,
    @JsonKey(name: "buy_more_code") final String? buyMoreCode,
    @JsonKey(name: "bogo_code") final String? bogoCode,

  }) = _OfferPeriodList;
  factory OfferPeriodList.fromJson(Map<String, dynamic> json) =>
      _$OfferPeriodListFromJson(json);
}


@freezed
class CreateOfferPeriod with _$CreateOfferPeriod {
  const factory CreateOfferPeriod({
    @JsonKey(name: "from_date") final String? fromDate,
    @JsonKey(name: "to_date") final String? toDate,
    @JsonKey(name: "from_time") final String? fromTime,
    @JsonKey(name: "to_time") final String? toTime,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "description") final String? description,
    @JsonKey(name: "is_active") final bool? isActive,
    @JsonKey(name: "notes") final String? notes,
    @JsonKey(name: "created_by") final String? createdBy,
  }) = _CreateOfferPeriod;
  factory CreateOfferPeriod.fromJson(Map<String, dynamic> json) =>
      _$CreateOfferPeriodFromJson(json);
}
@freezed
class ReadOfferPeriod with _$ReadOfferPeriod {
  const factory ReadOfferPeriod({
    final int? id,
    @JsonKey(name: "from_time") final String? fromTime,
    @JsonKey(name: "to_time") final String? toTime,
    @JsonKey(name: "from_date") final String? fromDate,
    @JsonKey(name: "to_date") final String? toDate,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "offer_period_code") final String? offerPeriodCode,
    @JsonKey(name: "description") final String? description,
    @JsonKey(name: "is_active") final bool? isActive,
    @JsonKey(name: "notes") final String? notes,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "offer_applied_to_type") final List<String>? offerAppliedTo,

  }) = _ReadOfferPeriod;
  factory ReadOfferPeriod.fromJson(Map<String, dynamic> json) =>
      _$ReadOfferPeriodFromJson(json);
}
@freezed
class OfferGroupList with _$OfferGroupList{
  const factory OfferGroupList({
    final int? id,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "offer_group_code") final String? offerGroupCode,

  }) = _OfferGroupList;
  factory OfferGroupList.fromJson(Map<String, dynamic> json) =>
      _$OfferGroupListFromJson(json);
}

@freezed
class CreateOfferGroup with _$CreateOfferGroup {
  const factory CreateOfferGroup({
    @JsonKey(name: "offer_applied_to_type") final String? offerAppliedToType,
    @JsonKey(name: "offer_applied_to_id") final String? offerAppliedToId,
    @JsonKey(name: "image") final String? image,
    @JsonKey(name: "offer_applied_to_code") final String? offerAppliedToCode,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "description") final String? description,
    @JsonKey(name: "created_by") final String? createdBy,
    @JsonKey(name: "is_active") final bool? isActive,

  }) = _CreateOfferGroup;
  factory CreateOfferGroup.fromJson(Map<String, dynamic> json) =>
      _$CreateOfferGroupFromJson(json);
}
@freezed
class OfferGroupData with _$OfferGroupData {
  const factory OfferGroupData({

    @JsonKey(name: "offer_group_code") final String? offerGroupCode,
    @JsonKey(name: "offer_applied_to_type") final String? offerAppliedToType,
    @JsonKey(name: "offer_applied_to_id") final String? offerAppliedToId,
    @JsonKey(name: "image") final String? image,
    @JsonKey(name: "offer_applied_to_code") final String? offerAppliedToCode,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "description") final String? description,
    @JsonKey(name: "is_active") final bool? isActive,
    @JsonKey(name: "created_by") final String? createdBy,


  }) = _OfferGroupData;
  factory OfferGroupData.fromJson(Map<String, dynamic> json) =>
      _$OfferGroupDataFromJson(json);
}
@freezed
class ReadOfferGroup with _$ReadOfferGroup {
  const factory ReadOfferGroup({
    @JsonKey(name: "offer_applied_to_type")final List<String>? offerAppliedToType,
    @JsonKey(name: "offer_group_data")final OfferGroupData? offerGroupData,
  }) = _ReadOfferGroup;
  factory ReadOfferGroup.fromJson(Map<String, dynamic> json) =>
      _$ReadOfferGroupFromJson(json);
}@freezed
class listAllSalesApis with _$listAllSalesApis {
  const factory listAllSalesApis({
    @JsonKey(name: "sale_applying_on")final List<String>? saleApplyingOn,
    @JsonKey(name: "based_on")final List<String>? basedOn,
    @JsonKey(name: "sale_applying_to")final List<String>? saleApplyingTo,
    @JsonKey(name: "offer_applying_to")final List<String>? offerApplyingTo,
    @JsonKey(name: "bogo_applying_on")final List<String>? bogoApplyingOn,
    @JsonKey(name: "coupon_type")final List<String>? couponType,
    @JsonKey(name: "coupon_applying_to")final List<String>? couponApplyingTo,
    @JsonKey(name: "coupon_applying_on")final List<String>? couponApplyingOn,
    @JsonKey(name: "coupon_based_on")final List<String>? couponBasedOn,

  }) = _listAllSalesApis;
  factory listAllSalesApis.fromJson(Map<String, dynamic> json) =>
      _$listAllSalesApisFromJson(json);
}


@freezed
class PromotionSaleCreateModel with _$PromotionSaleCreateModel {
  const factory PromotionSaleCreateModel({
    final String? name,
    final String? description,
    final String? image,

    @JsonKey(name: "offer_applied_to_type")final String? offerAppliedToType,
    @JsonKey(name: "offer_period_id")final int? offerPeriodId,

    @JsonKey(name: "total_price")final int? totalPrice,
    @JsonKey(name: "offer_group")final int? offerGroupId,
    @JsonKey(name: "sales_applying_place")final String? salesApplyingPlace,
    @JsonKey(name: "maximum_count")final int? maximumCount,
    @JsonKey(name: "sales_applying_on_id")final int? salesApplyingOnId,
    @JsonKey(name: "sales_applying_place_code")final String? salesApplyingPlaceCode,
    @JsonKey(name: "sales_applying_place_name")final String? salesApplyingPlaceName,
    @JsonKey(name: "available_customer_groups")final String? availableCustomerGroup,
    @JsonKey(name: "sales_applying_on")final String? salesApplyingOn,

    @JsonKey(name: "offer_applied_to_code")final String? offerAppliedToCode,
    @JsonKey(name: "sales_applying_on_name")final String? salesApplyingOnName,
    @JsonKey(name: "created_by")final String? createdBy,
    @JsonKey(name: "sales_applying_on_code")final String? salesApplyingOnCode,
    @JsonKey(name: "discount_percentage_or_price")final int? discountPercentageOrPrice,
    @JsonKey(name: "is_available_for_all",defaultValue: false)final bool? isAvailableForAll,
    @JsonKey(name: "is_admin_based",defaultValue: false)final bool? isAdminBased,
    @JsonKey(name: "is_active",defaultValue: false)final bool? isActive,
    @JsonKey(name: "based_on")final String? basedOn,
    @JsonKey(name: "inventory_id")final String? inventoryId,
    @JsonKey(name: "sale_lines")final List<SaleLines>? saleLines,
    final List<Segment>? segments,
  }) = _PromotionSaleCreateModel;
  factory PromotionSaleCreateModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionSaleCreateModelFromJson(json);
}

@freezed
class SaleLines with _$SaleLines{
  const factory SaleLines({
    final int? id,
    final Barcode? barcode,

    @JsonKey(name: "variant_id") final int? variantId,
    @JsonKey(name: "variant_code") final String? variantCode,
    @JsonKey(name: "variant_name") final String? variantName,
    @JsonKey(name: "offer_group_code") final String? offerGroupCode,
    @JsonKey(name: "offer_name") final String? offerName,
    @JsonKey(name: "type_data") final String? typeData,
    @JsonKey(name: "updateCheck",defaultValue: false) final bool? updateCheck,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,

  }) = _SaleLines;
  factory SaleLines.fromJson(Map<String, dynamic> json) =>
      _$SaleLinesFromJson(json);




}
@freezed
class PromotionSaleReadModel with _$PromotionSaleReadModel{
  const factory PromotionSaleReadModel({
    final int? id,
    final String? name,
    final String? description,
    final String? image,
    final String? test,
    final Barcode? barcode,

    @JsonKey(name: "total_price") final double? totalPrice,
    @JsonKey(name: "discount_percentage_or_price") final double? discountPercentage,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "sale_code") final String? saleCode,
    @JsonKey(name: "created_at") final String? createdAt,
    @JsonKey(name: "sales_applying_place_code") final String? salesApplyingPlaceCode,
    @JsonKey(name: "sales_applying_place_name") final String? salesApplyingPlaceName,
    @JsonKey(name: "sales_applying_place_id") final int? salesApplyingPlaceId,
    @JsonKey(name: "sales_applying_on") final String? salesApplyingOn,
    @JsonKey(name: "based_on") final String? basedOn,
    @JsonKey(name: "sales_applying_on_name") final String? salesApplyingOnName,
    @JsonKey(name: "sales_applying_place") final String? salesApplyingPlace,
    @JsonKey(name: "sales_applying_on_id") final int? salesApplyingOnId,
    @JsonKey(name: "offer_period_id") final int? offerPriodId,
    @JsonKey(name: "offer_group_id") final int? offerGroupId,
    @JsonKey(name: "sales_applying_on_code") final String? salesApplyingOnCode,
    @JsonKey(name: "maximum_count") final int? maximumCount,
    @JsonKey(name: "is_available_for_all",defaultValue: false) final bool? isAvailableForAll,
    @JsonKey(name: "override_priority",defaultValue: false) final bool? overridePriority,
    @JsonKey(name: "is_applying_to_all_products",defaultValue: false) final bool? isApplyingToAllProducts,
    @JsonKey(name: "is_admin_based",defaultValue: false) final bool? isAdminBased,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    final List<Segment>? segments,
    @JsonKey(name: "sale_line")final List<SaleLines>? saleLines,


  }) = _PromotionSaleReadModel;
  factory PromotionSaleReadModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionSaleReadModelFromJson(json);
}

@freezed
class Barcode with _$Barcode{
  const factory Barcode({

    @JsonKey(name: "barcode_number") final String? barcodeNumber,
    @JsonKey(name: "file_name") final String? fileName,


  }) = _Barcode;
  factory Barcode.fromJson(Map<String, dynamic> json) =>
      _$BarcodeFromJson(json);
}

@freezed
class ChannelListModel with _$ChannelListModel{
  const factory ChannelListModel({
    final int? id,
    final String? name,
    final String? description,


    @JsonKey(name: "channel_code") final String? channelCode,



  }) = _ChannelListModel;
  factory ChannelListModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelListModelFromJson(json);
}
@freezed
class  Segment with _$Segment{
  const factory Segment({
    final int? id,

    @JsonKey(name: "segment_code") final String? segmentCode,
    @JsonKey(name: "segment_name") final String? segmentName,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "updatecheck", defaultValue: false) final bool? updatecheck,


  }) = _Segment;
  factory Segment.fromJson(Map<String, dynamic> json) =>
      _$SegmentFromJson(json);
}

@freezed
class  PromotionVariantModel with _$PromotionVariantModel{
  const factory PromotionVariantModel({
    final int? id,
    final String? code,
    final String? name,
    final Barcode? barCode,

    @JsonKey(name: "segment_code") final String? segmentCode,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActve,
    @JsonKey(name: "updateCheck",defaultValue: false) final bool? updateCheck,



  }) = _PromotionVariantModel;
  factory PromotionVariantModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionVariantModelFromJson(json);
}
@freezed
class  PromotionVariantPostModel with _$PromotionVariantPostModel{
  const factory PromotionVariantPostModel({


    @JsonKey(name: "applying_type") final String? applyinType,
    @JsonKey(name: "segment_list") final List<String>? segmentList,
    @JsonKey(name: "search_element") final String? searchElement,
    @JsonKey(name: "applying_type_code") final String? applyingTypeCode,
    @JsonKey(name: "inventory_id") final String? inventoryId,



  }) = _PromotionVariantPostModel;
  factory PromotionVariantPostModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionVariantPostModelFromJson(json);
}
@freezed
class VariantModel with _$VariantModel{
  const factory VariantModel({
    final int? id,
    final String? barcode,

    @JsonKey(name: "variant_id") final int? variantId,
    @JsonKey(name: "buy_more_id") final int? buyMoreId,
    @JsonKey(name: "variant_code") final String? variantCode,
    @JsonKey(name: "variant_name") final String? variantName,
    @JsonKey(name: "offer_group_code") final String? offerGroupCode,
    @JsonKey(name: "buy_more_line_code") final String? buyMoreLineCode,
    @JsonKey(name: "coupon_line_code") final String? couponLineCode,
    @JsonKey(name: "offer_name") final String? offerName,
    @JsonKey(name: "type_data") final String? typeData,
    @JsonKey(name: "updated_at") final String? updatedAt,

    @JsonKey(name: "updateCheck",defaultValue: false) final bool? updateCheck,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,

  }) = _VariantModel;
  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);




}
