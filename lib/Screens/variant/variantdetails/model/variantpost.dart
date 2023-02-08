import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemread.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';

part 'variantpost.g.dart';
part 'variantpost.freezed.dart';

@freezed
class VariantPost with _$VariantPost {
  const factory VariantPost({
    final int? id,
    final String? code,
    final double? vat,
    final String? description,
    final String? name,
    final String? image1,
    final String? image2,
    final String? image3,
    final String? image4,
    final String? image5,
    final String? catalog1,
    final String? catalog2,
    final String? catalog3,
    final String? catalog4,
    final String? catalog5,
    final String? catalog6,
    final String? catalog7,
    final String? catalog8,
    final double? length,
    final double? width,
    final double? weight,
    final double? height,
    final Storage? Ingrediants,
    final Storage? storage,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "inventory_name") final String? inventoryName,
    @JsonKey(name: "weight_uom_id") final int? weightUomId,
    @JsonKey(name: "uom_code") final String? uomCode,
    @JsonKey(name: "var_alternative_rfid") final String? varAlternativeRfid,
    @JsonKey(name: "alternative_barcode")
        final List<AlternativeBarcode>? alternativeBarcode,
    @JsonKey(name: "alternative_qrcode")
        final List<AlternativeBarcode>? alternativeQrCodeBarcode,
    @JsonKey(name: "vendor_details") final List<VendorDetails>? vendorDetails,
    @JsonKey(name: "vedio_url") final String? vedioUrl,
    @JsonKey(name: "search_name") final String? searchName,
    @JsonKey(name: "need_multiple_integration") final bool? needMultipleIntegration,
    @JsonKey(name: "pos_name") final String? posName,
    @JsonKey(name: "display_name") final String? displayName,
    @JsonKey(name: "produced_country") final String? producedCountry,
    @JsonKey(name: "arabic_description") final String? arabicDescription,
    @JsonKey(name: "additional_description")
        final String? additionalDescription,
    @JsonKey(name: "manufacture_id") final int? manuFacturedId,
    @JsonKey(name: "manufacture_name") final String? manuFacturedName,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "weight_unit") final String? weightUnit,
    @JsonKey(name: "length_unit") final String? lengthUnit,
    @JsonKey(name: "width_unit") final String? widthUnit,
    @JsonKey(name: "height_unit") final String? heightUnit,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "landing_cost") final double? landingCost,
    @JsonKey(name: "gross_weight") final double? grossWeight,
    @JsonKey(name: "net_weight") final double? netWeight,
    @JsonKey(name: "average_gp") final double? avgGp,
    @JsonKey(name: "maximum_gp") final double? maxGp,
    @JsonKey(name: "minimum_gp") final double? minGap,
    @JsonKey(name: "targeted_gp") final double? targetedGp,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "retail_selling_price_percentage")
        final double? retailSellingPricePercentage,
    @JsonKey(name: "wholesale_selling_price_percentage")
        final double? wholeSellingPricePercentage,
    @JsonKey(name: "online_selling_price_percentage")
        final double? onlineSellingPercenage,
    @JsonKey(name: "safty_stock") final int? safetyStock,
    @JsonKey(name: "sales_uom") final int? salesUom,
    @JsonKey(name: "sebling_id") final int? seblingId,
    @JsonKey(name: "purchase_uom") final int? purchaseUom,
    @JsonKey(name: "reorder_point") final int? reOrderPoint,
    @JsonKey(name: "reorder_quantity") final int? reorderQuantity,
    @JsonKey(name: "whole_sale_stock") final int? wholeSaleStock,
    @JsonKey(name: "min_sales_order_limit") final int? minSalesOrderLimit,
    @JsonKey(name: "max_sales_order_limit") final int? maxSalesOrderLimit,
    @JsonKey(name: "min_purchase_order_limit") final int? minPurchaseOrderLimit,
    @JsonKey(name: "max_purchase_order_limit") final int? maxPurchaseOrderLimit,
    @JsonKey(name: "purchase_block", defaultValue: false)
        final bool? purchaseBlock,
    @JsonKey(name: "sales_block", defaultValue: false) final bool? salesBolock,
    @JsonKey(name: "have_stock_partition_group", defaultValue: false) final bool? haveStockPartitionGroup,
    @JsonKey(name: "have_stock_priority", defaultValue: false) final bool? haveStockPriority,
    @JsonKey(name: "stock_partition_group_id") final int? stockPartitionGroupId,
    @JsonKey(name: "stock_warning", defaultValue: false)
        final bool? stockWarning,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
    @JsonKey(name: "item_catalog", defaultValue: false) final bool? itemCatelog,
    @JsonKey(name: "item_image", defaultValue: false) final bool? itemImage,
    @JsonKey(name: "ratio_to_eccommerce") final String? ratioToEcommerce,
    @JsonKey(name: "min_max_ratio") final String? minMaxRatio,
    @JsonKey(name: "return_type") final String? returnType,
    @JsonKey(name: "variant_status") final String? variantStatus,
    @JsonKey(name: "return_time") final int? returnTime,
    @JsonKey(name: "base_price") final double? basePrize,
    @JsonKey(name: "about_the_products") final Storage? aboutProducts,
    @JsonKey(name: "product_details")
        final ProductFeatures? productDetails,
    @JsonKey(name: "product_features")
        final ProductFeatures? productFeatures,
    @JsonKey(name: "Additional_info")
        final ProductFeatures? additionalInfo,
    @JsonKey(name: "Nutriants_facts")
        final ProductFeatures? nutriantsFacts,
    @JsonKey(name: "usage_direction") final Storage? usageDirection,
    @JsonKey(name: "important_info") final ProductFeatures? importantInfo,
    @JsonKey(name: "product_behaviour") final List<productBehaviour>? productBehavior,
    @JsonKey(name: "shelf_type") final String? shelfType,
    @JsonKey(name: "shelf_time") final int? shelfTime,
    @JsonKey(name: "have_gift_option",defaultValue: false) final bool? haveGiftOption,
    @JsonKey(name: "have_wrap_option",defaultValue: false) final bool? haveWrapOption,
  }) = _VariantPost;
  factory VariantPost.fromJson(Map<String, dynamic> json) =>
      _$VariantPostFromJson(json);
}

@freezed
class LinkedItemPostModel with _$LinkedItemPostModel {
  const factory LinkedItemPostModel({
    final String? title,
    final String? description,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "linked_item_id")
        final List<LinkedItemListModel>? linkedItemListModel,
    @JsonKey(name: "variant_id") final int? variantId,
  }) = _LinkedItemPostModel;
  factory LinkedItemPostModel.fromJson(Map<String, dynamic> json) =>
      _$LinkedItemPostModelFromJson(json);
}

@freezed
class LinkedItemListModel with _$LinkedItemListModel {
  const factory LinkedItemListModel({
    final int? id,
    final String? code,
    final String? name,
  }) = _LinkedItemListModel;
  factory LinkedItemListModel.fromJson(Map<String, dynamic> json) =>
      _$LinkedItemListModelFromJson(json);
}

@freezed
class LinkedItemListReadModel with _$LinkedItemListReadModel {
  const factory LinkedItemListReadModel({
    final int? id,
    final String? code,
    @JsonKey(name: "linked_item_id")
        final List<LinkedItemListIdModel>? linkedItemListIdModel,
    @JsonKey(name: "linkeditem_meta")
        final LinkedItemMetaModel? linkedItemMetaModel,
    @JsonKey(name: "is_active", defaultValue: false) final bool? isActive,
  }) = _LinkedItemListReadModel;
  factory LinkedItemListReadModel.fromJson(Map<String, dynamic> json) =>
      _$LinkedItemListReadModelFromJson(json);
}

@freezed
class LinkedItemListIdModel with _$LinkedItemListIdModel {
  const factory LinkedItemListIdModel({
    final int? id,
    final String? code,
    final String? name,
    final String? title,
    @JsonKey(name: "group_id", ) final int? groupId,
  }) = _LinkedItemListIdModel;
  factory LinkedItemListIdModel.fromJson(Map<String, dynamic> json) =>
      _$LinkedItemListIdModelFromJson(json);
}

@freezed
class LinkedItemMetaModel with _$LinkedItemMetaModel {
  const factory LinkedItemMetaModel({
    final String? title,
    final String? description,
  }) = _LinkedItemMetaModel;
  factory LinkedItemMetaModel.fromJson(Map<String, dynamic> json) =>
      _$LinkedItemMetaModelFromJson(json);
}
