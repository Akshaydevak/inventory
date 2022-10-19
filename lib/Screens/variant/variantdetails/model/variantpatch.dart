import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemread.dart';
import 'package:inventory/Screens/variant/variantdetails/model/variant_read.dart';


part 'variantpatch.g.dart';
part 'variantpatch.freezed.dart';

@freezed
class VariantPatch with _$VariantPatch {
  const factory VariantPatch({
    final int? id,
    final String? code,
    final String? barcode,
    final String? qrcode,
    final double? vat,
    final String? description,
    final String? name,
    final String? status,
    final int? image1,
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
    final  Storage? Ingrediants,
    final Storage? storage,


    @JsonKey(name: "variant_name") final String? variantName,
    @JsonKey(name: "maximum_gp") final double? maxGp,

    @JsonKey(name: "minimum_gp") final double? minGap,
    @JsonKey(name: "sales_uom") final String? salesUom,
    @JsonKey(name: "purchase_uom") final String? purchaseUom,
    @JsonKey(name: "search_name") final String? searchName,
    @JsonKey(name: "display_name") final String? displayName,
    @JsonKey(name: "arabic_description") final String? arabicDescription,
    @JsonKey(name: "additional_description") final String? additionalDescription,
    @JsonKey(name: "pos_name") final String? posName,
    @JsonKey(name: "gross_weight") final String? grossWeight,
    @JsonKey(name: "net_weight") final String? netWeight,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "actual_cost") final double? actualCost,

    @JsonKey(name: "landing_cost") final double? landingCost,
    @JsonKey(name: "base_price") final double? basePrize,
    @JsonKey(name: "manufacture_id") final int? manuFacturedId,
    @JsonKey(name: "manufacture_name") final String? manuFacturedName,
    @JsonKey(name: "safty_stock") final int? safetyStock,
    @JsonKey(name: "reorder_point") final int? reOrderPoint,
    @JsonKey(name: "reorder_quantity") final int? reorderQuantity,
    @JsonKey(name: "sales_block",defaultValue: false) final bool? salesBolock,
    @JsonKey(name: "purchase_block",defaultValue: false) final bool? purchaseBlock,
    @JsonKey(name: "ratio_to_eccommerce") final String? ratioToEcommerce,
    @JsonKey(name: "min_max_ratio") final String? minMaxRatio,
    @JsonKey(name: "min_sales_order_limit") final int? minSalesOrderLimit,

    @JsonKey(name: "max_sales_order_limit") final int? maxSalesOrderLimit,
    @JsonKey(name: "sebling_id") final int? seblingId,
    @JsonKey(name: "sibling_code") final int? sibilingCode,
    @JsonKey(name: "whole_sale_stock") final int? wholeSaleStock,

    @JsonKey(name: "stock_warning",defaultValue: false) final bool? stockWarning,
    @JsonKey(name: "item_catalog",defaultValue: false) final bool? itemCatelog,
    @JsonKey(name: "item_image",defaultValue: false) final bool? itemImage,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "retail_selling_price_percentage") final double? retailSellingPricePercentage,
    @JsonKey(name: "wholesale_selling_price_percentage") final double? wholeSellingPricePercentage,
    @JsonKey(name: "online_selling_price_percentage") final double? onlineSellingPercenage,
    @JsonKey(name: "vedio_url") final String? vedioUrl,
    @JsonKey(name: "average_gp") final double? avgGp,
    @JsonKey(name: "targeted_gp") final double? targetedGp,
    @JsonKey(name: "min_purchase_order_limit") final int? minPurchaseOrderLimit,
    @JsonKey(name: "max_purchase_order_limit") final int? maxPurchaseOrderLimit,
    @JsonKey(name: "important_info") final  ProductFeatures? importantInfo,
    @JsonKey(name: "Additional_info") final  ProductFeatures? additionalInfo,
    @JsonKey(name: "Nutriants_facts") final ProductFeatures? nutriantsFacts,
    @JsonKey(name: "product_details") final  ProductFeatures? productDetails,
    @JsonKey(name: "product_features") final  ProductFeatures? productFeatures,
    @JsonKey(name: "about_the_products") final  Storage? aboutProducts,
    @JsonKey(name: "product_behaviour") final List<productBehaviour>? productBehavior,
    @JsonKey(name: "usage_direction") final Storage? usageDirection,
    @JsonKey(name: "vendor_details") final List<VendorDetails>? vendorDetails,




    @JsonKey(name: "uom_code") final String? uomCode,
    @JsonKey(name: "alternative_barcode") final List< AlternativeBarcode>? alternativeBarcode,
    @JsonKey(name: "alternative_qrcode") final List<AlternativeBarcode>? alternativeQrCodeBarcode,
    @JsonKey(name: "inventory_id") final String? inventoryId,








    @JsonKey(name: "produced_country") final String? producedCountry,







    @JsonKey(name: "excess_tax") final double? excessTax,
















    @JsonKey(name: "return_type") final String? returnType,
    @JsonKey(name: "variant_status") final String? variantStatus,
    @JsonKey(name: "return_time") final int? returnTime,



  }) = _VariantPatch;
  factory VariantPatch.fromJson(Map<String, dynamic> json) =>
      _$VariantPatchFromJson(json);
}

