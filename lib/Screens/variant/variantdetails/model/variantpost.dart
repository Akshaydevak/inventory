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
    final int? image2,
    final int? image3,
    final int? image4,
    final int? image5,
    final int? catalog1,
    final int? catalog2,
    final int? catalog3,
    final int? catalog4,
    final int? catalog5,
    final int? catalog6,
    final int? catalog7,
    final int? catalog8,
    final  List<Storage>? Ingrediants,
    final List<Storage>? storage,




    @JsonKey(name: "uom_code") final String? uomCode,
    @JsonKey(name: "alternative_barcode") final List< AlternativeBarcode>? alternativeBarcode,
    @JsonKey(name: "alternative_qrcode") final List<AlternativeBarcode>? alternativeQrCodeBarcode,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "vedio_url") final String? vedioUrl,
    @JsonKey(name: "search_name") final String? searchName,
    @JsonKey(name: "pos_name") final String? posName,
    @JsonKey(name: "display_name") final String? displayName,
    @JsonKey(name: "produced_country") final String? producedCountry,
    @JsonKey(name: "arabic_description") final String? arabicDescription,
    @JsonKey(name: "additional_description") final String? additionalDescription,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "landing_cost") final double? landingCost,
    @JsonKey(name: "gross_weight") final double? grossWeight,
    @JsonKey(name: "net_weight") final double? netWeight,
    @JsonKey(name: "average_gp") final double? avgGp,
    @JsonKey(name: "maximum_gp") final double? maxGp,
    @JsonKey(name: "minimum_gp") final double? minGap,
    @JsonKey(name: "targeted_gp") final double? targetedGp,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "retail_selling_price_percentage") final double? retailSellingPricePercentage,
    @JsonKey(name: "wholesale_selling_price_percentage") final double? wholeSellingPricePercentage,
    @JsonKey(name: "online_selling_price_percentage") final double? onlineSellingPercenage,
    @JsonKey(name: "safty_stock") final int? safetyStock,
    @JsonKey(name: "sales_uom") final int? salesUom,
    @JsonKey(name: "purchase_uom") final int? purchaseUom,
    @JsonKey(name: "reorder_point") final int? reOrderPoint,


    @JsonKey(name: "reorder_quantity") final int? reorderQuantity,
    @JsonKey(name: "whole_sale_stock") final int? wholeSaleStock,
    @JsonKey(name: "min_sales_order_limit") final int? minSalesOrderLimit,
    @JsonKey(name: "max_sales_order_limit") final int? maxSalesOrderLimit,
    @JsonKey(name: "min_purchase_order_limit") final int? minPurchaseOrderLimit,
    @JsonKey(name: "max_purchase_order_limit") final int? maxPurchaseOrderLimit,
    @JsonKey(name: "purchase_block",defaultValue: false) final bool? purchaseBlock,
    @JsonKey(name: "sales_block",defaultValue: false) final bool? salesBolock,
    @JsonKey(name: "stock_warning",defaultValue: false) final bool? stockWarning,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "ratio_to_eccommerce") final String? ratioToEcommerce,
    @JsonKey(name: "min_max_ratio") final String? minMaxRatio,
    @JsonKey(name: "return_type") final String? returnType,
    @JsonKey(name: "variant_status") final String? variantStatus,
    @JsonKey(name: "return_time") final int? returnTime,
    @JsonKey(name: "base_price") final double? basePrize,
    @JsonKey(name: "about_the_products") final List< Storage>? aboutProducts,
    @JsonKey(name: "product_details") final  List<ProductFeatures>? productDetails,
    @JsonKey(name: "product_features") final List< ProductFeatures>? productFeatures,
    @JsonKey(name: "Additional_info") final  List<ProductFeatures>? additionalInfo,
    @JsonKey(name: "Nutriants_facts") final List<ProductFeatures>? nutriantsFacts,
    @JsonKey(name: "usage_direction") final List<Storage>? usageDirection,
    @JsonKey(name: "important_info") final List< ProductFeatures>? importantInfo,
    @JsonKey(name: "product_behaviour") final List<ProductFeatures>? productBehavior,


  }) = _VariantPost;
  factory VariantPost.fromJson(Map<String, dynamic> json) =>
      _$VariantPostFromJson(json);
}

