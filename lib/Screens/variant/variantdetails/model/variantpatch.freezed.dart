// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variantpatch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantPatch _$VariantPatchFromJson(Map<String, dynamic> json) {
  return _VariantPatch.fromJson(json);
}

/// @nodoc
class _$VariantPatchTearOff {
  const _$VariantPatchTearOff();

  _VariantPatch call(
      {int? id,
      String? code,
      String? barcode,
      String? qrcode,
      double? vat,
      String? description,
      String? name,
      String? status,
      int? image1,
      String? image2,
      double? height,
      double? width,
      double? length,
      double? weight,
      String? image3,
      String? image4,
      String? image5,
      String? catalog1,
      String? catalog2,
      String? catalog3,
      String? catalog4,
      String? catalog5,
      String? catalog6,
      String? catalog7,
      String? catalog8,
      Storage? Ingrediants,
      Storage? storage,
      @JsonKey(name: "variant_name")
          String? variantName,
      @JsonKey(name: "maximum_gp")
          double? maxGp,
      @JsonKey(name: "minimum_gp")
          double? minGap,
      @JsonKey(name: "weight_uom_id")
          int? weightUomId,
      @JsonKey(name: "sales_uom")
          String? salesUom,
      @JsonKey(name: "purchase_uom")
          String? purchaseUom,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "variant_value")
          String? variantValue,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "gross_weight")
          String? grossWeight,
      @JsonKey(name: "net_weight")
          String? netWeight,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "need_multiple_integration")
          bool? needMultipleIntegration,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "base_price")
          double? basePrize,
      @JsonKey(name: "manufacture_id")
          int? manuFacturedId,
      @JsonKey(name: "manufacture_name")
          String? manuFacturedName,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reorderQuantity,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBolock,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "ratio_to_eccommerce")
          String? ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "min_sales_order_limit")
          int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSalesOrderLimit,
      @JsonKey(name: "sebling_id")
          int? seblingId,
      @JsonKey(name: "sibling_code")
          int? sibilingCode,
      @JsonKey(name: "whole_sale_stock")
          int? wholeSaleStock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "retail_selling_price_percentage")
          double? retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          double? wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          double? onlineSellingPercenage,
      @JsonKey(name: "vedio_url")
          String? vedioUrl,
      @JsonKey(name: "average_gp")
          double? avgGp,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "important_info")
          ProductFeatures? importantInfo,
      @JsonKey(name: "Additional_info")
          ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          ProductFeatures? nutriantsFacts,
      @JsonKey(name: "product_details")
          ProductFeatures? productDetails,
      @JsonKey(name: "product_features")
          ProductFeatures? productFeatures,
      @JsonKey(name: "about_the_products")
          Storage? aboutProducts,
      @JsonKey(name: "product_behaviour")
          List<productBehaviour>? productBehavior,
      @JsonKey(name: "usage_direction")
          Storage? usageDirection,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "variant_status")
          String? variantStatus,
      @JsonKey(name: "return_time")
          int? returnTime}) {
    return _VariantPatch(
      id: id,
      code: code,
      barcode: barcode,
      qrcode: qrcode,
      vat: vat,
      description: description,
      name: name,
      status: status,
      image1: image1,
      image2: image2,
      height: height,
      width: width,
      length: length,
      weight: weight,
      image3: image3,
      image4: image4,
      image5: image5,
      catalog1: catalog1,
      catalog2: catalog2,
      catalog3: catalog3,
      catalog4: catalog4,
      catalog5: catalog5,
      catalog6: catalog6,
      catalog7: catalog7,
      catalog8: catalog8,
      Ingrediants: Ingrediants,
      storage: storage,
      variantName: variantName,
      maxGp: maxGp,
      minGap: minGap,
      weightUomId: weightUomId,
      salesUom: salesUom,
      purchaseUom: purchaseUom,
      searchName: searchName,
      displayName: displayName,
      variantValue: variantValue,
      arabicDescription: arabicDescription,
      additionalDescription: additionalDescription,
      posName: posName,
      grossWeight: grossWeight,
      netWeight: netWeight,
      unitCost: unitCost,
      actualCost: actualCost,
      needMultipleIntegration: needMultipleIntegration,
      landingCost: landingCost,
      basePrize: basePrize,
      manuFacturedId: manuFacturedId,
      manuFacturedName: manuFacturedName,
      safetyStock: safetyStock,
      reOrderPoint: reOrderPoint,
      reorderQuantity: reorderQuantity,
      salesBolock: salesBolock,
      purchaseBlock: purchaseBlock,
      ratioToEcommerce: ratioToEcommerce,
      minMaxRatio: minMaxRatio,
      minSalesOrderLimit: minSalesOrderLimit,
      maxSalesOrderLimit: maxSalesOrderLimit,
      seblingId: seblingId,
      sibilingCode: sibilingCode,
      wholeSaleStock: wholeSaleStock,
      stockWarning: stockWarning,
      itemCatelog: itemCatelog,
      itemImage: itemImage,
      isActive: isActive,
      retailSellingPricePercentage: retailSellingPricePercentage,
      wholeSellingPricePercentage: wholeSellingPricePercentage,
      onlineSellingPercenage: onlineSellingPercenage,
      vedioUrl: vedioUrl,
      avgGp: avgGp,
      targetedGp: targetedGp,
      minPurchaseOrderLimit: minPurchaseOrderLimit,
      maxPurchaseOrderLimit: maxPurchaseOrderLimit,
      importantInfo: importantInfo,
      additionalInfo: additionalInfo,
      nutriantsFacts: nutriantsFacts,
      productDetails: productDetails,
      productFeatures: productFeatures,
      aboutProducts: aboutProducts,
      productBehavior: productBehavior,
      usageDirection: usageDirection,
      vendorDetails: vendorDetails,
      uomCode: uomCode,
      alternativeBarcode: alternativeBarcode,
      alternativeQrCodeBarcode: alternativeQrCodeBarcode,
      inventoryId: inventoryId,
      producedCountry: producedCountry,
      excessTax: excessTax,
      returnType: returnType,
      variantStatus: variantStatus,
      returnTime: returnTime,
    );
  }

  VariantPatch fromJson(Map<String, Object> json) {
    return VariantPatch.fromJson(json);
  }
}

/// @nodoc
const $VariantPatch = _$VariantPatchTearOff();

/// @nodoc
mixin _$VariantPatch {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get qrcode => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get image1 => throw _privateConstructorUsedError;
  String? get image2 => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get length => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get image3 => throw _privateConstructorUsedError;
  String? get image4 => throw _privateConstructorUsedError;
  String? get image5 => throw _privateConstructorUsedError;
  String? get catalog1 => throw _privateConstructorUsedError;
  String? get catalog2 => throw _privateConstructorUsedError;
  String? get catalog3 => throw _privateConstructorUsedError;
  String? get catalog4 => throw _privateConstructorUsedError;
  String? get catalog5 => throw _privateConstructorUsedError;
  String? get catalog6 => throw _privateConstructorUsedError;
  String? get catalog7 => throw _privateConstructorUsedError;
  String? get catalog8 => throw _privateConstructorUsedError;
  Storage? get Ingrediants => throw _privateConstructorUsedError;
  Storage? get storage => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_gp")
  double? get maxGp => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_gp")
  double? get minGap => throw _privateConstructorUsedError;
  @JsonKey(name: "weight_uom_id")
  int? get weightUomId => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @JsonKey(name: "search_name")
  String? get searchName => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_value")
  String? get variantValue => throw _privateConstructorUsedError;
  @JsonKey(name: "arabic_description")
  String? get arabicDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_description")
  String? get additionalDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "pos_name")
  String? get posName => throw _privateConstructorUsedError;
  @JsonKey(name: "gross_weight")
  String? get grossWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "net_weight")
  String? get netWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "need_multiple_integration")
  bool? get needMultipleIntegration => throw _privateConstructorUsedError;
  @JsonKey(name: "landing_cost")
  double? get landingCost => throw _privateConstructorUsedError;
  @JsonKey(name: "base_price")
  double? get basePrize => throw _privateConstructorUsedError;
  @JsonKey(name: "manufacture_id")
  int? get manuFacturedId => throw _privateConstructorUsedError;
  @JsonKey(name: "manufacture_name")
  String? get manuFacturedName => throw _privateConstructorUsedError;
  @JsonKey(name: "safty_stock")
  int? get safetyStock => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_quantity")
  int? get reorderQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_block", defaultValue: false)
  bool? get salesBolock => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_block", defaultValue: false)
  bool? get purchaseBlock => throw _privateConstructorUsedError;
  @JsonKey(name: "ratio_to_eccommerce")
  String? get ratioToEcommerce => throw _privateConstructorUsedError;
  @JsonKey(name: "min_max_ratio")
  String? get minMaxRatio => throw _privateConstructorUsedError;
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "sebling_id")
  int? get seblingId => throw _privateConstructorUsedError;
  @JsonKey(name: "sibling_code")
  int? get sibilingCode => throw _privateConstructorUsedError;
  @JsonKey(name: "whole_sale_stock")
  int? get wholeSaleStock => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @JsonKey(name: "item_catalog", defaultValue: false)
  bool? get itemCatelog => throw _privateConstructorUsedError;
  @JsonKey(name: "item_image", defaultValue: false)
  bool? get itemImage => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "retail_selling_price_percentage")
  double? get retailSellingPricePercentage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "wholesale_selling_price_percentage")
  double? get wholeSellingPricePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "online_selling_price_percentage")
  double? get onlineSellingPercenage => throw _privateConstructorUsedError;
  @JsonKey(name: "vedio_url")
  String? get vedioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "average_gp")
  double? get avgGp => throw _privateConstructorUsedError;
  @JsonKey(name: "targeted_gp")
  double? get targetedGp => throw _privateConstructorUsedError;
  @JsonKey(name: "min_purchase_order_limit")
  int? get minPurchaseOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "max_purchase_order_limit")
  int? get maxPurchaseOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "important_info")
  ProductFeatures? get importantInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "Additional_info")
  ProductFeatures? get additionalInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "Nutriants_facts")
  ProductFeatures? get nutriantsFacts => throw _privateConstructorUsedError;
  @JsonKey(name: "product_details")
  ProductFeatures? get productDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "product_features")
  ProductFeatures? get productFeatures => throw _privateConstructorUsedError;
  @JsonKey(name: "about_the_products")
  Storage? get aboutProducts => throw _privateConstructorUsedError;
  @JsonKey(name: "product_behaviour")
  List<productBehaviour>? get productBehavior =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "usage_direction")
  Storage? get usageDirection => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_details")
  List<VendorDetails>? get vendorDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @JsonKey(name: "alternative_barcode")
  List<AlternativeBarcode>? get alternativeBarcode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "alternative_qrcode")
  List<AlternativeBarcode>? get alternativeQrCodeBarcode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "produced_country")
  String? get producedCountry => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_status")
  String? get variantStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantPatchCopyWith<VariantPatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantPatchCopyWith<$Res> {
  factory $VariantPatchCopyWith(
          VariantPatch value, $Res Function(VariantPatch) then) =
      _$VariantPatchCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      String? barcode,
      String? qrcode,
      double? vat,
      String? description,
      String? name,
      String? status,
      int? image1,
      String? image2,
      double? height,
      double? width,
      double? length,
      double? weight,
      String? image3,
      String? image4,
      String? image5,
      String? catalog1,
      String? catalog2,
      String? catalog3,
      String? catalog4,
      String? catalog5,
      String? catalog6,
      String? catalog7,
      String? catalog8,
      Storage? Ingrediants,
      Storage? storage,
      @JsonKey(name: "variant_name")
          String? variantName,
      @JsonKey(name: "maximum_gp")
          double? maxGp,
      @JsonKey(name: "minimum_gp")
          double? minGap,
      @JsonKey(name: "weight_uom_id")
          int? weightUomId,
      @JsonKey(name: "sales_uom")
          String? salesUom,
      @JsonKey(name: "purchase_uom")
          String? purchaseUom,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "variant_value")
          String? variantValue,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "gross_weight")
          String? grossWeight,
      @JsonKey(name: "net_weight")
          String? netWeight,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "need_multiple_integration")
          bool? needMultipleIntegration,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "base_price")
          double? basePrize,
      @JsonKey(name: "manufacture_id")
          int? manuFacturedId,
      @JsonKey(name: "manufacture_name")
          String? manuFacturedName,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reorderQuantity,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBolock,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "ratio_to_eccommerce")
          String? ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "min_sales_order_limit")
          int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSalesOrderLimit,
      @JsonKey(name: "sebling_id")
          int? seblingId,
      @JsonKey(name: "sibling_code")
          int? sibilingCode,
      @JsonKey(name: "whole_sale_stock")
          int? wholeSaleStock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "retail_selling_price_percentage")
          double? retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          double? wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          double? onlineSellingPercenage,
      @JsonKey(name: "vedio_url")
          String? vedioUrl,
      @JsonKey(name: "average_gp")
          double? avgGp,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "important_info")
          ProductFeatures? importantInfo,
      @JsonKey(name: "Additional_info")
          ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          ProductFeatures? nutriantsFacts,
      @JsonKey(name: "product_details")
          ProductFeatures? productDetails,
      @JsonKey(name: "product_features")
          ProductFeatures? productFeatures,
      @JsonKey(name: "about_the_products")
          Storage? aboutProducts,
      @JsonKey(name: "product_behaviour")
          List<productBehaviour>? productBehavior,
      @JsonKey(name: "usage_direction")
          Storage? usageDirection,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "variant_status")
          String? variantStatus,
      @JsonKey(name: "return_time")
          int? returnTime});

  $StorageCopyWith<$Res>? get Ingrediants;
  $StorageCopyWith<$Res>? get storage;
  $ProductFeaturesCopyWith<$Res>? get importantInfo;
  $ProductFeaturesCopyWith<$Res>? get additionalInfo;
  $ProductFeaturesCopyWith<$Res>? get nutriantsFacts;
  $ProductFeaturesCopyWith<$Res>? get productDetails;
  $ProductFeaturesCopyWith<$Res>? get productFeatures;
  $StorageCopyWith<$Res>? get aboutProducts;
  $StorageCopyWith<$Res>? get usageDirection;
}

/// @nodoc
class _$VariantPatchCopyWithImpl<$Res> implements $VariantPatchCopyWith<$Res> {
  _$VariantPatchCopyWithImpl(this._value, this._then);

  final VariantPatch _value;
  // ignore: unused_field
  final $Res Function(VariantPatch) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? barcode = freezed,
    Object? qrcode = freezed,
    Object? vat = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? length = freezed,
    Object? weight = freezed,
    Object? image3 = freezed,
    Object? image4 = freezed,
    Object? image5 = freezed,
    Object? catalog1 = freezed,
    Object? catalog2 = freezed,
    Object? catalog3 = freezed,
    Object? catalog4 = freezed,
    Object? catalog5 = freezed,
    Object? catalog6 = freezed,
    Object? catalog7 = freezed,
    Object? catalog8 = freezed,
    Object? Ingrediants = freezed,
    Object? storage = freezed,
    Object? variantName = freezed,
    Object? maxGp = freezed,
    Object? minGap = freezed,
    Object? weightUomId = freezed,
    Object? salesUom = freezed,
    Object? purchaseUom = freezed,
    Object? searchName = freezed,
    Object? displayName = freezed,
    Object? variantValue = freezed,
    Object? arabicDescription = freezed,
    Object? additionalDescription = freezed,
    Object? posName = freezed,
    Object? grossWeight = freezed,
    Object? netWeight = freezed,
    Object? unitCost = freezed,
    Object? actualCost = freezed,
    Object? needMultipleIntegration = freezed,
    Object? landingCost = freezed,
    Object? basePrize = freezed,
    Object? manuFacturedId = freezed,
    Object? manuFacturedName = freezed,
    Object? safetyStock = freezed,
    Object? reOrderPoint = freezed,
    Object? reorderQuantity = freezed,
    Object? salesBolock = freezed,
    Object? purchaseBlock = freezed,
    Object? ratioToEcommerce = freezed,
    Object? minMaxRatio = freezed,
    Object? minSalesOrderLimit = freezed,
    Object? maxSalesOrderLimit = freezed,
    Object? seblingId = freezed,
    Object? sibilingCode = freezed,
    Object? wholeSaleStock = freezed,
    Object? stockWarning = freezed,
    Object? itemCatelog = freezed,
    Object? itemImage = freezed,
    Object? isActive = freezed,
    Object? retailSellingPricePercentage = freezed,
    Object? wholeSellingPricePercentage = freezed,
    Object? onlineSellingPercenage = freezed,
    Object? vedioUrl = freezed,
    Object? avgGp = freezed,
    Object? targetedGp = freezed,
    Object? minPurchaseOrderLimit = freezed,
    Object? maxPurchaseOrderLimit = freezed,
    Object? importantInfo = freezed,
    Object? additionalInfo = freezed,
    Object? nutriantsFacts = freezed,
    Object? productDetails = freezed,
    Object? productFeatures = freezed,
    Object? aboutProducts = freezed,
    Object? productBehavior = freezed,
    Object? usageDirection = freezed,
    Object? vendorDetails = freezed,
    Object? uomCode = freezed,
    Object? alternativeBarcode = freezed,
    Object? alternativeQrCodeBarcode = freezed,
    Object? inventoryId = freezed,
    Object? producedCountry = freezed,
    Object? excessTax = freezed,
    Object? returnType = freezed,
    Object? variantStatus = freezed,
    Object? returnTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrcode: qrcode == freezed
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: image1 == freezed
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as int?,
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String?,
      image4: image4 == freezed
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as String?,
      image5: image5 == freezed
          ? _value.image5
          : image5 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog1: catalog1 == freezed
          ? _value.catalog1
          : catalog1 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog2: catalog2 == freezed
          ? _value.catalog2
          : catalog2 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog3: catalog3 == freezed
          ? _value.catalog3
          : catalog3 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog4: catalog4 == freezed
          ? _value.catalog4
          : catalog4 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog5: catalog5 == freezed
          ? _value.catalog5
          : catalog5 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog6: catalog6 == freezed
          ? _value.catalog6
          : catalog6 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog7: catalog7 == freezed
          ? _value.catalog7
          : catalog7 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog8: catalog8 == freezed
          ? _value.catalog8
          : catalog8 // ignore: cast_nullable_to_non_nullable
              as String?,
      Ingrediants: Ingrediants == freezed
          ? _value.Ingrediants
          : Ingrediants // ignore: cast_nullable_to_non_nullable
              as Storage?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as Storage?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      maxGp: maxGp == freezed
          ? _value.maxGp
          : maxGp // ignore: cast_nullable_to_non_nullable
              as double?,
      minGap: minGap == freezed
          ? _value.minGap
          : minGap // ignore: cast_nullable_to_non_nullable
              as double?,
      weightUomId: weightUomId == freezed
          ? _value.weightUomId
          : weightUomId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: searchName == freezed
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantValue: variantValue == freezed
          ? _value.variantValue
          : variantValue // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicDescription: arabicDescription == freezed
          ? _value.arabicDescription
          : arabicDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalDescription: additionalDescription == freezed
          ? _value.additionalDescription
          : additionalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      posName: posName == freezed
          ? _value.posName
          : posName // ignore: cast_nullable_to_non_nullable
              as String?,
      grossWeight: grossWeight == freezed
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      netWeight: netWeight == freezed
          ? _value.netWeight
          : netWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      needMultipleIntegration: needMultipleIntegration == freezed
          ? _value.needMultipleIntegration
          : needMultipleIntegration // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingCost: landingCost == freezed
          ? _value.landingCost
          : landingCost // ignore: cast_nullable_to_non_nullable
              as double?,
      basePrize: basePrize == freezed
          ? _value.basePrize
          : basePrize // ignore: cast_nullable_to_non_nullable
              as double?,
      manuFacturedId: manuFacturedId == freezed
          ? _value.manuFacturedId
          : manuFacturedId // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFacturedName: manuFacturedName == freezed
          ? _value.manuFacturedName
          : manuFacturedName // ignore: cast_nullable_to_non_nullable
              as String?,
      safetyStock: safetyStock == freezed
          ? _value.safetyStock
          : safetyStock // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderPoint: reOrderPoint == freezed
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      reorderQuantity: reorderQuantity == freezed
          ? _value.reorderQuantity
          : reorderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesBolock: salesBolock == freezed
          ? _value.salesBolock
          : salesBolock // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      ratioToEcommerce: ratioToEcommerce == freezed
          ? _value.ratioToEcommerce
          : ratioToEcommerce // ignore: cast_nullable_to_non_nullable
              as String?,
      minMaxRatio: minMaxRatio == freezed
          ? _value.minMaxRatio
          : minMaxRatio // ignore: cast_nullable_to_non_nullable
              as String?,
      minSalesOrderLimit: minSalesOrderLimit == freezed
          ? _value.minSalesOrderLimit
          : minSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderLimit: maxSalesOrderLimit == freezed
          ? _value.maxSalesOrderLimit
          : maxSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      seblingId: seblingId == freezed
          ? _value.seblingId
          : seblingId // ignore: cast_nullable_to_non_nullable
              as int?,
      sibilingCode: sibilingCode == freezed
          ? _value.sibilingCode
          : sibilingCode // ignore: cast_nullable_to_non_nullable
              as int?,
      wholeSaleStock: wholeSaleStock == freezed
          ? _value.wholeSaleStock
          : wholeSaleStock // ignore: cast_nullable_to_non_nullable
              as int?,
      stockWarning: stockWarning == freezed
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemCatelog: itemCatelog == freezed
          ? _value.itemCatelog
          : itemCatelog // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemImage: itemImage == freezed
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      retailSellingPricePercentage: retailSellingPricePercentage == freezed
          ? _value.retailSellingPricePercentage
          : retailSellingPricePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      wholeSellingPricePercentage: wholeSellingPricePercentage == freezed
          ? _value.wholeSellingPricePercentage
          : wholeSellingPricePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      onlineSellingPercenage: onlineSellingPercenage == freezed
          ? _value.onlineSellingPercenage
          : onlineSellingPercenage // ignore: cast_nullable_to_non_nullable
              as double?,
      vedioUrl: vedioUrl == freezed
          ? _value.vedioUrl
          : vedioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avgGp: avgGp == freezed
          ? _value.avgGp
          : avgGp // ignore: cast_nullable_to_non_nullable
              as double?,
      targetedGp: targetedGp == freezed
          ? _value.targetedGp
          : targetedGp // ignore: cast_nullable_to_non_nullable
              as double?,
      minPurchaseOrderLimit: minPurchaseOrderLimit == freezed
          ? _value.minPurchaseOrderLimit
          : minPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPurchaseOrderLimit: maxPurchaseOrderLimit == freezed
          ? _value.maxPurchaseOrderLimit
          : maxPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      importantInfo: importantInfo == freezed
          ? _value.importantInfo
          : importantInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      nutriantsFacts: nutriantsFacts == freezed
          ? _value.nutriantsFacts
          : nutriantsFacts // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productDetails: productDetails == freezed
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productFeatures: productFeatures == freezed
          ? _value.productFeatures
          : productFeatures // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      aboutProducts: aboutProducts == freezed
          ? _value.aboutProducts
          : aboutProducts // ignore: cast_nullable_to_non_nullable
              as Storage?,
      productBehavior: productBehavior == freezed
          ? _value.productBehavior
          : productBehavior // ignore: cast_nullable_to_non_nullable
              as List<productBehaviour>?,
      usageDirection: usageDirection == freezed
          ? _value.usageDirection
          : usageDirection // ignore: cast_nullable_to_non_nullable
              as Storage?,
      vendorDetails: vendorDetails == freezed
          ? _value.vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as List<VendorDetails>?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeBarcode: alternativeBarcode == freezed
          ? _value.alternativeBarcode
          : alternativeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      alternativeQrCodeBarcode: alternativeQrCodeBarcode == freezed
          ? _value.alternativeQrCodeBarcode
          : alternativeQrCodeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      producedCountry: producedCountry == freezed
          ? _value.producedCountry
          : producedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      variantStatus: variantStatus == freezed
          ? _value.variantStatus
          : variantStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: returnTime == freezed
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $StorageCopyWith<$Res>? get Ingrediants {
    if (_value.Ingrediants == null) {
      return null;
    }

    return $StorageCopyWith<$Res>(_value.Ingrediants!, (value) {
      return _then(_value.copyWith(Ingrediants: value));
    });
  }

  @override
  $StorageCopyWith<$Res>? get storage {
    if (_value.storage == null) {
      return null;
    }

    return $StorageCopyWith<$Res>(_value.storage!, (value) {
      return _then(_value.copyWith(storage: value));
    });
  }

  @override
  $ProductFeaturesCopyWith<$Res>? get importantInfo {
    if (_value.importantInfo == null) {
      return null;
    }

    return $ProductFeaturesCopyWith<$Res>(_value.importantInfo!, (value) {
      return _then(_value.copyWith(importantInfo: value));
    });
  }

  @override
  $ProductFeaturesCopyWith<$Res>? get additionalInfo {
    if (_value.additionalInfo == null) {
      return null;
    }

    return $ProductFeaturesCopyWith<$Res>(_value.additionalInfo!, (value) {
      return _then(_value.copyWith(additionalInfo: value));
    });
  }

  @override
  $ProductFeaturesCopyWith<$Res>? get nutriantsFacts {
    if (_value.nutriantsFacts == null) {
      return null;
    }

    return $ProductFeaturesCopyWith<$Res>(_value.nutriantsFacts!, (value) {
      return _then(_value.copyWith(nutriantsFacts: value));
    });
  }

  @override
  $ProductFeaturesCopyWith<$Res>? get productDetails {
    if (_value.productDetails == null) {
      return null;
    }

    return $ProductFeaturesCopyWith<$Res>(_value.productDetails!, (value) {
      return _then(_value.copyWith(productDetails: value));
    });
  }

  @override
  $ProductFeaturesCopyWith<$Res>? get productFeatures {
    if (_value.productFeatures == null) {
      return null;
    }

    return $ProductFeaturesCopyWith<$Res>(_value.productFeatures!, (value) {
      return _then(_value.copyWith(productFeatures: value));
    });
  }

  @override
  $StorageCopyWith<$Res>? get aboutProducts {
    if (_value.aboutProducts == null) {
      return null;
    }

    return $StorageCopyWith<$Res>(_value.aboutProducts!, (value) {
      return _then(_value.copyWith(aboutProducts: value));
    });
  }

  @override
  $StorageCopyWith<$Res>? get usageDirection {
    if (_value.usageDirection == null) {
      return null;
    }

    return $StorageCopyWith<$Res>(_value.usageDirection!, (value) {
      return _then(_value.copyWith(usageDirection: value));
    });
  }
}

/// @nodoc
abstract class _$VariantPatchCopyWith<$Res>
    implements $VariantPatchCopyWith<$Res> {
  factory _$VariantPatchCopyWith(
          _VariantPatch value, $Res Function(_VariantPatch) then) =
      __$VariantPatchCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      String? barcode,
      String? qrcode,
      double? vat,
      String? description,
      String? name,
      String? status,
      int? image1,
      String? image2,
      double? height,
      double? width,
      double? length,
      double? weight,
      String? image3,
      String? image4,
      String? image5,
      String? catalog1,
      String? catalog2,
      String? catalog3,
      String? catalog4,
      String? catalog5,
      String? catalog6,
      String? catalog7,
      String? catalog8,
      Storage? Ingrediants,
      Storage? storage,
      @JsonKey(name: "variant_name")
          String? variantName,
      @JsonKey(name: "maximum_gp")
          double? maxGp,
      @JsonKey(name: "minimum_gp")
          double? minGap,
      @JsonKey(name: "weight_uom_id")
          int? weightUomId,
      @JsonKey(name: "sales_uom")
          String? salesUom,
      @JsonKey(name: "purchase_uom")
          String? purchaseUom,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "variant_value")
          String? variantValue,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "gross_weight")
          String? grossWeight,
      @JsonKey(name: "net_weight")
          String? netWeight,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "need_multiple_integration")
          bool? needMultipleIntegration,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "base_price")
          double? basePrize,
      @JsonKey(name: "manufacture_id")
          int? manuFacturedId,
      @JsonKey(name: "manufacture_name")
          String? manuFacturedName,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reorderQuantity,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBolock,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "ratio_to_eccommerce")
          String? ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "min_sales_order_limit")
          int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSalesOrderLimit,
      @JsonKey(name: "sebling_id")
          int? seblingId,
      @JsonKey(name: "sibling_code")
          int? sibilingCode,
      @JsonKey(name: "whole_sale_stock")
          int? wholeSaleStock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "retail_selling_price_percentage")
          double? retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          double? wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          double? onlineSellingPercenage,
      @JsonKey(name: "vedio_url")
          String? vedioUrl,
      @JsonKey(name: "average_gp")
          double? avgGp,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "important_info")
          ProductFeatures? importantInfo,
      @JsonKey(name: "Additional_info")
          ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          ProductFeatures? nutriantsFacts,
      @JsonKey(name: "product_details")
          ProductFeatures? productDetails,
      @JsonKey(name: "product_features")
          ProductFeatures? productFeatures,
      @JsonKey(name: "about_the_products")
          Storage? aboutProducts,
      @JsonKey(name: "product_behaviour")
          List<productBehaviour>? productBehavior,
      @JsonKey(name: "usage_direction")
          Storage? usageDirection,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "variant_status")
          String? variantStatus,
      @JsonKey(name: "return_time")
          int? returnTime});

  @override
  $StorageCopyWith<$Res>? get Ingrediants;
  @override
  $StorageCopyWith<$Res>? get storage;
  @override
  $ProductFeaturesCopyWith<$Res>? get importantInfo;
  @override
  $ProductFeaturesCopyWith<$Res>? get additionalInfo;
  @override
  $ProductFeaturesCopyWith<$Res>? get nutriantsFacts;
  @override
  $ProductFeaturesCopyWith<$Res>? get productDetails;
  @override
  $ProductFeaturesCopyWith<$Res>? get productFeatures;
  @override
  $StorageCopyWith<$Res>? get aboutProducts;
  @override
  $StorageCopyWith<$Res>? get usageDirection;
}

/// @nodoc
class __$VariantPatchCopyWithImpl<$Res> extends _$VariantPatchCopyWithImpl<$Res>
    implements _$VariantPatchCopyWith<$Res> {
  __$VariantPatchCopyWithImpl(
      _VariantPatch _value, $Res Function(_VariantPatch) _then)
      : super(_value, (v) => _then(v as _VariantPatch));

  @override
  _VariantPatch get _value => super._value as _VariantPatch;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? barcode = freezed,
    Object? qrcode = freezed,
    Object? vat = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? length = freezed,
    Object? weight = freezed,
    Object? image3 = freezed,
    Object? image4 = freezed,
    Object? image5 = freezed,
    Object? catalog1 = freezed,
    Object? catalog2 = freezed,
    Object? catalog3 = freezed,
    Object? catalog4 = freezed,
    Object? catalog5 = freezed,
    Object? catalog6 = freezed,
    Object? catalog7 = freezed,
    Object? catalog8 = freezed,
    Object? Ingrediants = freezed,
    Object? storage = freezed,
    Object? variantName = freezed,
    Object? maxGp = freezed,
    Object? minGap = freezed,
    Object? weightUomId = freezed,
    Object? salesUom = freezed,
    Object? purchaseUom = freezed,
    Object? searchName = freezed,
    Object? displayName = freezed,
    Object? variantValue = freezed,
    Object? arabicDescription = freezed,
    Object? additionalDescription = freezed,
    Object? posName = freezed,
    Object? grossWeight = freezed,
    Object? netWeight = freezed,
    Object? unitCost = freezed,
    Object? actualCost = freezed,
    Object? needMultipleIntegration = freezed,
    Object? landingCost = freezed,
    Object? basePrize = freezed,
    Object? manuFacturedId = freezed,
    Object? manuFacturedName = freezed,
    Object? safetyStock = freezed,
    Object? reOrderPoint = freezed,
    Object? reorderQuantity = freezed,
    Object? salesBolock = freezed,
    Object? purchaseBlock = freezed,
    Object? ratioToEcommerce = freezed,
    Object? minMaxRatio = freezed,
    Object? minSalesOrderLimit = freezed,
    Object? maxSalesOrderLimit = freezed,
    Object? seblingId = freezed,
    Object? sibilingCode = freezed,
    Object? wholeSaleStock = freezed,
    Object? stockWarning = freezed,
    Object? itemCatelog = freezed,
    Object? itemImage = freezed,
    Object? isActive = freezed,
    Object? retailSellingPricePercentage = freezed,
    Object? wholeSellingPricePercentage = freezed,
    Object? onlineSellingPercenage = freezed,
    Object? vedioUrl = freezed,
    Object? avgGp = freezed,
    Object? targetedGp = freezed,
    Object? minPurchaseOrderLimit = freezed,
    Object? maxPurchaseOrderLimit = freezed,
    Object? importantInfo = freezed,
    Object? additionalInfo = freezed,
    Object? nutriantsFacts = freezed,
    Object? productDetails = freezed,
    Object? productFeatures = freezed,
    Object? aboutProducts = freezed,
    Object? productBehavior = freezed,
    Object? usageDirection = freezed,
    Object? vendorDetails = freezed,
    Object? uomCode = freezed,
    Object? alternativeBarcode = freezed,
    Object? alternativeQrCodeBarcode = freezed,
    Object? inventoryId = freezed,
    Object? producedCountry = freezed,
    Object? excessTax = freezed,
    Object? returnType = freezed,
    Object? variantStatus = freezed,
    Object? returnTime = freezed,
  }) {
    return _then(_VariantPatch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrcode: qrcode == freezed
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image1: image1 == freezed
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as int?,
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String?,
      image4: image4 == freezed
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as String?,
      image5: image5 == freezed
          ? _value.image5
          : image5 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog1: catalog1 == freezed
          ? _value.catalog1
          : catalog1 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog2: catalog2 == freezed
          ? _value.catalog2
          : catalog2 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog3: catalog3 == freezed
          ? _value.catalog3
          : catalog3 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog4: catalog4 == freezed
          ? _value.catalog4
          : catalog4 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog5: catalog5 == freezed
          ? _value.catalog5
          : catalog5 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog6: catalog6 == freezed
          ? _value.catalog6
          : catalog6 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog7: catalog7 == freezed
          ? _value.catalog7
          : catalog7 // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog8: catalog8 == freezed
          ? _value.catalog8
          : catalog8 // ignore: cast_nullable_to_non_nullable
              as String?,
      Ingrediants: Ingrediants == freezed
          ? _value.Ingrediants
          : Ingrediants // ignore: cast_nullable_to_non_nullable
              as Storage?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as Storage?,
      variantName: variantName == freezed
          ? _value.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      maxGp: maxGp == freezed
          ? _value.maxGp
          : maxGp // ignore: cast_nullable_to_non_nullable
              as double?,
      minGap: minGap == freezed
          ? _value.minGap
          : minGap // ignore: cast_nullable_to_non_nullable
              as double?,
      weightUomId: weightUomId == freezed
          ? _value.weightUomId
          : weightUomId // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: searchName == freezed
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantValue: variantValue == freezed
          ? _value.variantValue
          : variantValue // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicDescription: arabicDescription == freezed
          ? _value.arabicDescription
          : arabicDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalDescription: additionalDescription == freezed
          ? _value.additionalDescription
          : additionalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      posName: posName == freezed
          ? _value.posName
          : posName // ignore: cast_nullable_to_non_nullable
              as String?,
      grossWeight: grossWeight == freezed
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      netWeight: netWeight == freezed
          ? _value.netWeight
          : netWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      needMultipleIntegration: needMultipleIntegration == freezed
          ? _value.needMultipleIntegration
          : needMultipleIntegration // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingCost: landingCost == freezed
          ? _value.landingCost
          : landingCost // ignore: cast_nullable_to_non_nullable
              as double?,
      basePrize: basePrize == freezed
          ? _value.basePrize
          : basePrize // ignore: cast_nullable_to_non_nullable
              as double?,
      manuFacturedId: manuFacturedId == freezed
          ? _value.manuFacturedId
          : manuFacturedId // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFacturedName: manuFacturedName == freezed
          ? _value.manuFacturedName
          : manuFacturedName // ignore: cast_nullable_to_non_nullable
              as String?,
      safetyStock: safetyStock == freezed
          ? _value.safetyStock
          : safetyStock // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderPoint: reOrderPoint == freezed
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      reorderQuantity: reorderQuantity == freezed
          ? _value.reorderQuantity
          : reorderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salesBolock: salesBolock == freezed
          ? _value.salesBolock
          : salesBolock // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      ratioToEcommerce: ratioToEcommerce == freezed
          ? _value.ratioToEcommerce
          : ratioToEcommerce // ignore: cast_nullable_to_non_nullable
              as String?,
      minMaxRatio: minMaxRatio == freezed
          ? _value.minMaxRatio
          : minMaxRatio // ignore: cast_nullable_to_non_nullable
              as String?,
      minSalesOrderLimit: minSalesOrderLimit == freezed
          ? _value.minSalesOrderLimit
          : minSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderLimit: maxSalesOrderLimit == freezed
          ? _value.maxSalesOrderLimit
          : maxSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      seblingId: seblingId == freezed
          ? _value.seblingId
          : seblingId // ignore: cast_nullable_to_non_nullable
              as int?,
      sibilingCode: sibilingCode == freezed
          ? _value.sibilingCode
          : sibilingCode // ignore: cast_nullable_to_non_nullable
              as int?,
      wholeSaleStock: wholeSaleStock == freezed
          ? _value.wholeSaleStock
          : wholeSaleStock // ignore: cast_nullable_to_non_nullable
              as int?,
      stockWarning: stockWarning == freezed
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemCatelog: itemCatelog == freezed
          ? _value.itemCatelog
          : itemCatelog // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemImage: itemImage == freezed
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      retailSellingPricePercentage: retailSellingPricePercentage == freezed
          ? _value.retailSellingPricePercentage
          : retailSellingPricePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      wholeSellingPricePercentage: wholeSellingPricePercentage == freezed
          ? _value.wholeSellingPricePercentage
          : wholeSellingPricePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      onlineSellingPercenage: onlineSellingPercenage == freezed
          ? _value.onlineSellingPercenage
          : onlineSellingPercenage // ignore: cast_nullable_to_non_nullable
              as double?,
      vedioUrl: vedioUrl == freezed
          ? _value.vedioUrl
          : vedioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avgGp: avgGp == freezed
          ? _value.avgGp
          : avgGp // ignore: cast_nullable_to_non_nullable
              as double?,
      targetedGp: targetedGp == freezed
          ? _value.targetedGp
          : targetedGp // ignore: cast_nullable_to_non_nullable
              as double?,
      minPurchaseOrderLimit: minPurchaseOrderLimit == freezed
          ? _value.minPurchaseOrderLimit
          : minPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPurchaseOrderLimit: maxPurchaseOrderLimit == freezed
          ? _value.maxPurchaseOrderLimit
          : maxPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      importantInfo: importantInfo == freezed
          ? _value.importantInfo
          : importantInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      nutriantsFacts: nutriantsFacts == freezed
          ? _value.nutriantsFacts
          : nutriantsFacts // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productDetails: productDetails == freezed
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productFeatures: productFeatures == freezed
          ? _value.productFeatures
          : productFeatures // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      aboutProducts: aboutProducts == freezed
          ? _value.aboutProducts
          : aboutProducts // ignore: cast_nullable_to_non_nullable
              as Storage?,
      productBehavior: productBehavior == freezed
          ? _value.productBehavior
          : productBehavior // ignore: cast_nullable_to_non_nullable
              as List<productBehaviour>?,
      usageDirection: usageDirection == freezed
          ? _value.usageDirection
          : usageDirection // ignore: cast_nullable_to_non_nullable
              as Storage?,
      vendorDetails: vendorDetails == freezed
          ? _value.vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as List<VendorDetails>?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeBarcode: alternativeBarcode == freezed
          ? _value.alternativeBarcode
          : alternativeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      alternativeQrCodeBarcode: alternativeQrCodeBarcode == freezed
          ? _value.alternativeQrCodeBarcode
          : alternativeQrCodeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      producedCountry: producedCountry == freezed
          ? _value.producedCountry
          : producedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      variantStatus: variantStatus == freezed
          ? _value.variantStatus
          : variantStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: returnTime == freezed
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantPatch implements _VariantPatch {
  const _$_VariantPatch(
      {this.id,
      this.code,
      this.barcode,
      this.qrcode,
      this.vat,
      this.description,
      this.name,
      this.status,
      this.image1,
      this.image2,
      this.height,
      this.width,
      this.length,
      this.weight,
      this.image3,
      this.image4,
      this.image5,
      this.catalog1,
      this.catalog2,
      this.catalog3,
      this.catalog4,
      this.catalog5,
      this.catalog6,
      this.catalog7,
      this.catalog8,
      this.Ingrediants,
      this.storage,
      @JsonKey(name: "variant_name")
          this.variantName,
      @JsonKey(name: "maximum_gp")
          this.maxGp,
      @JsonKey(name: "minimum_gp")
          this.minGap,
      @JsonKey(name: "weight_uom_id")
          this.weightUomId,
      @JsonKey(name: "sales_uom")
          this.salesUom,
      @JsonKey(name: "purchase_uom")
          this.purchaseUom,
      @JsonKey(name: "search_name")
          this.searchName,
      @JsonKey(name: "display_name")
          this.displayName,
      @JsonKey(name: "variant_value")
          this.variantValue,
      @JsonKey(name: "arabic_description")
          this.arabicDescription,
      @JsonKey(name: "additional_description")
          this.additionalDescription,
      @JsonKey(name: "pos_name")
          this.posName,
      @JsonKey(name: "gross_weight")
          this.grossWeight,
      @JsonKey(name: "net_weight")
          this.netWeight,
      @JsonKey(name: "unit_cost")
          this.unitCost,
      @JsonKey(name: "actual_cost")
          this.actualCost,
      @JsonKey(name: "need_multiple_integration")
          this.needMultipleIntegration,
      @JsonKey(name: "landing_cost")
          this.landingCost,
      @JsonKey(name: "base_price")
          this.basePrize,
      @JsonKey(name: "manufacture_id")
          this.manuFacturedId,
      @JsonKey(name: "manufacture_name")
          this.manuFacturedName,
      @JsonKey(name: "safty_stock")
          this.safetyStock,
      @JsonKey(name: "reorder_point")
          this.reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          this.reorderQuantity,
      @JsonKey(name: "sales_block", defaultValue: false)
          this.salesBolock,
      @JsonKey(name: "purchase_block", defaultValue: false)
          this.purchaseBlock,
      @JsonKey(name: "ratio_to_eccommerce")
          this.ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          this.minMaxRatio,
      @JsonKey(name: "min_sales_order_limit")
          this.minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          this.maxSalesOrderLimit,
      @JsonKey(name: "sebling_id")
          this.seblingId,
      @JsonKey(name: "sibling_code")
          this.sibilingCode,
      @JsonKey(name: "whole_sale_stock")
          this.wholeSaleStock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          this.stockWarning,
      @JsonKey(name: "item_catalog", defaultValue: false)
          this.itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          this.itemImage,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "retail_selling_price_percentage")
          this.retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          this.wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          this.onlineSellingPercenage,
      @JsonKey(name: "vedio_url")
          this.vedioUrl,
      @JsonKey(name: "average_gp")
          this.avgGp,
      @JsonKey(name: "targeted_gp")
          this.targetedGp,
      @JsonKey(name: "min_purchase_order_limit")
          this.minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          this.maxPurchaseOrderLimit,
      @JsonKey(name: "important_info")
          this.importantInfo,
      @JsonKey(name: "Additional_info")
          this.additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          this.nutriantsFacts,
      @JsonKey(name: "product_details")
          this.productDetails,
      @JsonKey(name: "product_features")
          this.productFeatures,
      @JsonKey(name: "about_the_products")
          this.aboutProducts,
      @JsonKey(name: "product_behaviour")
          this.productBehavior,
      @JsonKey(name: "usage_direction")
          this.usageDirection,
      @JsonKey(name: "vendor_details")
          this.vendorDetails,
      @JsonKey(name: "uom_code")
          this.uomCode,
      @JsonKey(name: "alternative_barcode")
          this.alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          this.alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "produced_country")
          this.producedCountry,
      @JsonKey(name: "excess_tax")
          this.excessTax,
      @JsonKey(name: "return_type")
          this.returnType,
      @JsonKey(name: "variant_status")
          this.variantStatus,
      @JsonKey(name: "return_time")
          this.returnTime});

  factory _$_VariantPatch.fromJson(Map<String, dynamic> json) =>
      _$$_VariantPatchFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? barcode;
  @override
  final String? qrcode;
  @override
  final double? vat;
  @override
  final String? description;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final int? image1;
  @override
  final String? image2;
  @override
  final double? height;
  @override
  final double? width;
  @override
  final double? length;
  @override
  final double? weight;
  @override
  final String? image3;
  @override
  final String? image4;
  @override
  final String? image5;
  @override
  final String? catalog1;
  @override
  final String? catalog2;
  @override
  final String? catalog3;
  @override
  final String? catalog4;
  @override
  final String? catalog5;
  @override
  final String? catalog6;
  @override
  final String? catalog7;
  @override
  final String? catalog8;
  @override
  final Storage? Ingrediants;
  @override
  final Storage? storage;
  @override
  @JsonKey(name: "variant_name")
  final String? variantName;
  @override
  @JsonKey(name: "maximum_gp")
  final double? maxGp;
  @override
  @JsonKey(name: "minimum_gp")
  final double? minGap;
  @override
  @JsonKey(name: "weight_uom_id")
  final int? weightUomId;
  @override
  @JsonKey(name: "sales_uom")
  final String? salesUom;
  @override
  @JsonKey(name: "purchase_uom")
  final String? purchaseUom;
  @override
  @JsonKey(name: "search_name")
  final String? searchName;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "variant_value")
  final String? variantValue;
  @override
  @JsonKey(name: "arabic_description")
  final String? arabicDescription;
  @override
  @JsonKey(name: "additional_description")
  final String? additionalDescription;
  @override
  @JsonKey(name: "pos_name")
  final String? posName;
  @override
  @JsonKey(name: "gross_weight")
  final String? grossWeight;
  @override
  @JsonKey(name: "net_weight")
  final String? netWeight;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "need_multiple_integration")
  final bool? needMultipleIntegration;
  @override
  @JsonKey(name: "landing_cost")
  final double? landingCost;
  @override
  @JsonKey(name: "base_price")
  final double? basePrize;
  @override
  @JsonKey(name: "manufacture_id")
  final int? manuFacturedId;
  @override
  @JsonKey(name: "manufacture_name")
  final String? manuFacturedName;
  @override
  @JsonKey(name: "safty_stock")
  final int? safetyStock;
  @override
  @JsonKey(name: "reorder_point")
  final int? reOrderPoint;
  @override
  @JsonKey(name: "reorder_quantity")
  final int? reorderQuantity;
  @override
  @JsonKey(name: "sales_block", defaultValue: false)
  final bool? salesBolock;
  @override
  @JsonKey(name: "purchase_block", defaultValue: false)
  final bool? purchaseBlock;
  @override
  @JsonKey(name: "ratio_to_eccommerce")
  final String? ratioToEcommerce;
  @override
  @JsonKey(name: "min_max_ratio")
  final String? minMaxRatio;
  @override
  @JsonKey(name: "min_sales_order_limit")
  final int? minSalesOrderLimit;
  @override
  @JsonKey(name: "max_sales_order_limit")
  final int? maxSalesOrderLimit;
  @override
  @JsonKey(name: "sebling_id")
  final int? seblingId;
  @override
  @JsonKey(name: "sibling_code")
  final int? sibilingCode;
  @override
  @JsonKey(name: "whole_sale_stock")
  final int? wholeSaleStock;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  final bool? stockWarning;
  @override
  @JsonKey(name: "item_catalog", defaultValue: false)
  final bool? itemCatelog;
  @override
  @JsonKey(name: "item_image", defaultValue: false)
  final bool? itemImage;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "retail_selling_price_percentage")
  final double? retailSellingPricePercentage;
  @override
  @JsonKey(name: "wholesale_selling_price_percentage")
  final double? wholeSellingPricePercentage;
  @override
  @JsonKey(name: "online_selling_price_percentage")
  final double? onlineSellingPercenage;
  @override
  @JsonKey(name: "vedio_url")
  final String? vedioUrl;
  @override
  @JsonKey(name: "average_gp")
  final double? avgGp;
  @override
  @JsonKey(name: "targeted_gp")
  final double? targetedGp;
  @override
  @JsonKey(name: "min_purchase_order_limit")
  final int? minPurchaseOrderLimit;
  @override
  @JsonKey(name: "max_purchase_order_limit")
  final int? maxPurchaseOrderLimit;
  @override
  @JsonKey(name: "important_info")
  final ProductFeatures? importantInfo;
  @override
  @JsonKey(name: "Additional_info")
  final ProductFeatures? additionalInfo;
  @override
  @JsonKey(name: "Nutriants_facts")
  final ProductFeatures? nutriantsFacts;
  @override
  @JsonKey(name: "product_details")
  final ProductFeatures? productDetails;
  @override
  @JsonKey(name: "product_features")
  final ProductFeatures? productFeatures;
  @override
  @JsonKey(name: "about_the_products")
  final Storage? aboutProducts;
  @override
  @JsonKey(name: "product_behaviour")
  final List<productBehaviour>? productBehavior;
  @override
  @JsonKey(name: "usage_direction")
  final Storage? usageDirection;
  @override
  @JsonKey(name: "vendor_details")
  final List<VendorDetails>? vendorDetails;
  @override
  @JsonKey(name: "uom_code")
  final String? uomCode;
  @override
  @JsonKey(name: "alternative_barcode")
  final List<AlternativeBarcode>? alternativeBarcode;
  @override
  @JsonKey(name: "alternative_qrcode")
  final List<AlternativeBarcode>? alternativeQrCodeBarcode;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "produced_country")
  final String? producedCountry;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "variant_status")
  final String? variantStatus;
  @override
  @JsonKey(name: "return_time")
  final int? returnTime;

  @override
  String toString() {
    return 'VariantPatch(id: $id, code: $code, barcode: $barcode, qrcode: $qrcode, vat: $vat, description: $description, name: $name, status: $status, image1: $image1, image2: $image2, height: $height, width: $width, length: $length, weight: $weight, image3: $image3, image4: $image4, image5: $image5, catalog1: $catalog1, catalog2: $catalog2, catalog3: $catalog3, catalog4: $catalog4, catalog5: $catalog5, catalog6: $catalog6, catalog7: $catalog7, catalog8: $catalog8, Ingrediants: $Ingrediants, storage: $storage, variantName: $variantName, maxGp: $maxGp, minGap: $minGap, weightUomId: $weightUomId, salesUom: $salesUom, purchaseUom: $purchaseUom, searchName: $searchName, displayName: $displayName, variantValue: $variantValue, arabicDescription: $arabicDescription, additionalDescription: $additionalDescription, posName: $posName, grossWeight: $grossWeight, netWeight: $netWeight, unitCost: $unitCost, actualCost: $actualCost, needMultipleIntegration: $needMultipleIntegration, landingCost: $landingCost, basePrize: $basePrize, manuFacturedId: $manuFacturedId, manuFacturedName: $manuFacturedName, safetyStock: $safetyStock, reOrderPoint: $reOrderPoint, reorderQuantity: $reorderQuantity, salesBolock: $salesBolock, purchaseBlock: $purchaseBlock, ratioToEcommerce: $ratioToEcommerce, minMaxRatio: $minMaxRatio, minSalesOrderLimit: $minSalesOrderLimit, maxSalesOrderLimit: $maxSalesOrderLimit, seblingId: $seblingId, sibilingCode: $sibilingCode, wholeSaleStock: $wholeSaleStock, stockWarning: $stockWarning, itemCatelog: $itemCatelog, itemImage: $itemImage, isActive: $isActive, retailSellingPricePercentage: $retailSellingPricePercentage, wholeSellingPricePercentage: $wholeSellingPricePercentage, onlineSellingPercenage: $onlineSellingPercenage, vedioUrl: $vedioUrl, avgGp: $avgGp, targetedGp: $targetedGp, minPurchaseOrderLimit: $minPurchaseOrderLimit, maxPurchaseOrderLimit: $maxPurchaseOrderLimit, importantInfo: $importantInfo, additionalInfo: $additionalInfo, nutriantsFacts: $nutriantsFacts, productDetails: $productDetails, productFeatures: $productFeatures, aboutProducts: $aboutProducts, productBehavior: $productBehavior, usageDirection: $usageDirection, vendorDetails: $vendorDetails, uomCode: $uomCode, alternativeBarcode: $alternativeBarcode, alternativeQrCodeBarcode: $alternativeQrCodeBarcode, inventoryId: $inventoryId, producedCountry: $producedCountry, excessTax: $excessTax, returnType: $returnType, variantStatus: $variantStatus, returnTime: $returnTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantPatch &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.qrcode, qrcode) ||
                const DeepCollectionEquality().equals(other.qrcode, qrcode)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.image1, image1) ||
                const DeepCollectionEquality().equals(other.image1, image1)) &&
            (identical(other.image2, image2) ||
                const DeepCollectionEquality().equals(other.image2, image2)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.image3, image3) ||
                const DeepCollectionEquality().equals(other.image3, image3)) &&
            (identical(other.image4, image4) ||
                const DeepCollectionEquality().equals(other.image4, image4)) &&
            (identical(other.image5, image5) ||
                const DeepCollectionEquality().equals(other.image5, image5)) &&
            (identical(other.catalog1, catalog1) ||
                const DeepCollectionEquality()
                    .equals(other.catalog1, catalog1)) &&
            (identical(other.catalog2, catalog2) ||
                const DeepCollectionEquality()
                    .equals(other.catalog2, catalog2)) &&
            (identical(other.catalog3, catalog3) ||
                const DeepCollectionEquality()
                    .equals(other.catalog3, catalog3)) &&
            (identical(other.catalog4, catalog4) ||
                const DeepCollectionEquality()
                    .equals(other.catalog4, catalog4)) &&
            (identical(other.catalog5, catalog5) ||
                const DeepCollectionEquality()
                    .equals(other.catalog5, catalog5)) &&
            (identical(other.catalog6, catalog6) ||
                const DeepCollectionEquality()
                    .equals(other.catalog6, catalog6)) &&
            (identical(other.catalog7, catalog7) ||
                const DeepCollectionEquality()
                    .equals(other.catalog7, catalog7)) &&
            (identical(other.catalog8, catalog8) ||
                const DeepCollectionEquality()
                    .equals(other.catalog8, catalog8)) &&
            (identical(other.Ingrediants, Ingrediants) ||
                const DeepCollectionEquality()
                    .equals(other.Ingrediants, Ingrediants)) &&
            (identical(other.storage, storage) ||
                const DeepCollectionEquality()
                    .equals(other.storage, storage)) &&
            (identical(other.variantName, variantName) ||
                const DeepCollectionEquality()
                    .equals(other.variantName, variantName)) &&
            (identical(other.maxGp, maxGp) ||
                const DeepCollectionEquality().equals(other.maxGp, maxGp)) &&
            (identical(other.minGap, minGap) ||
                const DeepCollectionEquality().equals(other.minGap, minGap)) &&
            (identical(other.weightUomId, weightUomId) || const DeepCollectionEquality().equals(other.weightUomId, weightUomId)) &&
            (identical(other.salesUom, salesUom) || const DeepCollectionEquality().equals(other.salesUom, salesUom)) &&
            (identical(other.purchaseUom, purchaseUom) || const DeepCollectionEquality().equals(other.purchaseUom, purchaseUom)) &&
            (identical(other.searchName, searchName) || const DeepCollectionEquality().equals(other.searchName, searchName)) &&
            (identical(other.displayName, displayName) || const DeepCollectionEquality().equals(other.displayName, displayName)) &&
            (identical(other.variantValue, variantValue) || const DeepCollectionEquality().equals(other.variantValue, variantValue)) &&
            (identical(other.arabicDescription, arabicDescription) || const DeepCollectionEquality().equals(other.arabicDescription, arabicDescription)) &&
            (identical(other.additionalDescription, additionalDescription) || const DeepCollectionEquality().equals(other.additionalDescription, additionalDescription)) &&
            (identical(other.posName, posName) || const DeepCollectionEquality().equals(other.posName, posName)) &&
            (identical(other.grossWeight, grossWeight) || const DeepCollectionEquality().equals(other.grossWeight, grossWeight)) &&
            (identical(other.netWeight, netWeight) || const DeepCollectionEquality().equals(other.netWeight, netWeight)) &&
            (identical(other.unitCost, unitCost) || const DeepCollectionEquality().equals(other.unitCost, unitCost)) &&
            (identical(other.actualCost, actualCost) || const DeepCollectionEquality().equals(other.actualCost, actualCost)) &&
            (identical(other.needMultipleIntegration, needMultipleIntegration) || const DeepCollectionEquality().equals(other.needMultipleIntegration, needMultipleIntegration)) &&
            (identical(other.landingCost, landingCost) || const DeepCollectionEquality().equals(other.landingCost, landingCost)) &&
            (identical(other.basePrize, basePrize) || const DeepCollectionEquality().equals(other.basePrize, basePrize)) &&
            (identical(other.manuFacturedId, manuFacturedId) || const DeepCollectionEquality().equals(other.manuFacturedId, manuFacturedId)) &&
            (identical(other.manuFacturedName, manuFacturedName) || const DeepCollectionEquality().equals(other.manuFacturedName, manuFacturedName)) &&
            (identical(other.safetyStock, safetyStock) || const DeepCollectionEquality().equals(other.safetyStock, safetyStock)) &&
            (identical(other.reOrderPoint, reOrderPoint) || const DeepCollectionEquality().equals(other.reOrderPoint, reOrderPoint)) &&
            (identical(other.reorderQuantity, reorderQuantity) || const DeepCollectionEquality().equals(other.reorderQuantity, reorderQuantity)) &&
            (identical(other.salesBolock, salesBolock) || const DeepCollectionEquality().equals(other.salesBolock, salesBolock)) &&
            (identical(other.purchaseBlock, purchaseBlock) || const DeepCollectionEquality().equals(other.purchaseBlock, purchaseBlock)) &&
            (identical(other.ratioToEcommerce, ratioToEcommerce) || const DeepCollectionEquality().equals(other.ratioToEcommerce, ratioToEcommerce)) &&
            (identical(other.minMaxRatio, minMaxRatio) || const DeepCollectionEquality().equals(other.minMaxRatio, minMaxRatio)) &&
            (identical(other.minSalesOrderLimit, minSalesOrderLimit) || const DeepCollectionEquality().equals(other.minSalesOrderLimit, minSalesOrderLimit)) &&
            (identical(other.maxSalesOrderLimit, maxSalesOrderLimit) || const DeepCollectionEquality().equals(other.maxSalesOrderLimit, maxSalesOrderLimit)) &&
            (identical(other.seblingId, seblingId) || const DeepCollectionEquality().equals(other.seblingId, seblingId)) &&
            (identical(other.sibilingCode, sibilingCode) || const DeepCollectionEquality().equals(other.sibilingCode, sibilingCode)) &&
            (identical(other.wholeSaleStock, wholeSaleStock) || const DeepCollectionEquality().equals(other.wholeSaleStock, wholeSaleStock)) &&
            (identical(other.stockWarning, stockWarning) || const DeepCollectionEquality().equals(other.stockWarning, stockWarning)) &&
            (identical(other.itemCatelog, itemCatelog) || const DeepCollectionEquality().equals(other.itemCatelog, itemCatelog)) &&
            (identical(other.itemImage, itemImage) || const DeepCollectionEquality().equals(other.itemImage, itemImage)) &&
            (identical(other.isActive, isActive) || const DeepCollectionEquality().equals(other.isActive, isActive)) &&
            (identical(other.retailSellingPricePercentage, retailSellingPricePercentage) || const DeepCollectionEquality().equals(other.retailSellingPricePercentage, retailSellingPricePercentage)) &&
            (identical(other.wholeSellingPricePercentage, wholeSellingPricePercentage) || const DeepCollectionEquality().equals(other.wholeSellingPricePercentage, wholeSellingPricePercentage)) &&
            (identical(other.onlineSellingPercenage, onlineSellingPercenage) || const DeepCollectionEquality().equals(other.onlineSellingPercenage, onlineSellingPercenage)) &&
            (identical(other.vedioUrl, vedioUrl) || const DeepCollectionEquality().equals(other.vedioUrl, vedioUrl)) &&
            (identical(other.avgGp, avgGp) || const DeepCollectionEquality().equals(other.avgGp, avgGp)) &&
            (identical(other.targetedGp, targetedGp) || const DeepCollectionEquality().equals(other.targetedGp, targetedGp)) &&
            (identical(other.minPurchaseOrderLimit, minPurchaseOrderLimit) || const DeepCollectionEquality().equals(other.minPurchaseOrderLimit, minPurchaseOrderLimit)) &&
            (identical(other.maxPurchaseOrderLimit, maxPurchaseOrderLimit) || const DeepCollectionEquality().equals(other.maxPurchaseOrderLimit, maxPurchaseOrderLimit)) &&
            (identical(other.importantInfo, importantInfo) || const DeepCollectionEquality().equals(other.importantInfo, importantInfo)) &&
            (identical(other.additionalInfo, additionalInfo) || const DeepCollectionEquality().equals(other.additionalInfo, additionalInfo)) &&
            (identical(other.nutriantsFacts, nutriantsFacts) || const DeepCollectionEquality().equals(other.nutriantsFacts, nutriantsFacts)) &&
            (identical(other.productDetails, productDetails) || const DeepCollectionEquality().equals(other.productDetails, productDetails)) &&
            (identical(other.productFeatures, productFeatures) || const DeepCollectionEquality().equals(other.productFeatures, productFeatures)) &&
            (identical(other.aboutProducts, aboutProducts) || const DeepCollectionEquality().equals(other.aboutProducts, aboutProducts)) &&
            (identical(other.productBehavior, productBehavior) || const DeepCollectionEquality().equals(other.productBehavior, productBehavior)) &&
            (identical(other.usageDirection, usageDirection) || const DeepCollectionEquality().equals(other.usageDirection, usageDirection)) &&
            (identical(other.vendorDetails, vendorDetails) || const DeepCollectionEquality().equals(other.vendorDetails, vendorDetails)) &&
            (identical(other.uomCode, uomCode) || const DeepCollectionEquality().equals(other.uomCode, uomCode)) &&
            (identical(other.alternativeBarcode, alternativeBarcode) || const DeepCollectionEquality().equals(other.alternativeBarcode, alternativeBarcode)) &&
            (identical(other.alternativeQrCodeBarcode, alternativeQrCodeBarcode) || const DeepCollectionEquality().equals(other.alternativeQrCodeBarcode, alternativeQrCodeBarcode)) &&
            (identical(other.inventoryId, inventoryId) || const DeepCollectionEquality().equals(other.inventoryId, inventoryId)) &&
            (identical(other.producedCountry, producedCountry) || const DeepCollectionEquality().equals(other.producedCountry, producedCountry)) &&
            (identical(other.excessTax, excessTax) || const DeepCollectionEquality().equals(other.excessTax, excessTax)) &&
            (identical(other.returnType, returnType) || const DeepCollectionEquality().equals(other.returnType, returnType)) &&
            (identical(other.variantStatus, variantStatus) || const DeepCollectionEquality().equals(other.variantStatus, variantStatus)) &&
            (identical(other.returnTime, returnTime) || const DeepCollectionEquality().equals(other.returnTime, returnTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(qrcode) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(image1) ^
      const DeepCollectionEquality().hash(image2) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(image3) ^
      const DeepCollectionEquality().hash(image4) ^
      const DeepCollectionEquality().hash(image5) ^
      const DeepCollectionEquality().hash(catalog1) ^
      const DeepCollectionEquality().hash(catalog2) ^
      const DeepCollectionEquality().hash(catalog3) ^
      const DeepCollectionEquality().hash(catalog4) ^
      const DeepCollectionEquality().hash(catalog5) ^
      const DeepCollectionEquality().hash(catalog6) ^
      const DeepCollectionEquality().hash(catalog7) ^
      const DeepCollectionEquality().hash(catalog8) ^
      const DeepCollectionEquality().hash(Ingrediants) ^
      const DeepCollectionEquality().hash(storage) ^
      const DeepCollectionEquality().hash(variantName) ^
      const DeepCollectionEquality().hash(maxGp) ^
      const DeepCollectionEquality().hash(minGap) ^
      const DeepCollectionEquality().hash(weightUomId) ^
      const DeepCollectionEquality().hash(salesUom) ^
      const DeepCollectionEquality().hash(purchaseUom) ^
      const DeepCollectionEquality().hash(searchName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(variantValue) ^
      const DeepCollectionEquality().hash(arabicDescription) ^
      const DeepCollectionEquality().hash(additionalDescription) ^
      const DeepCollectionEquality().hash(posName) ^
      const DeepCollectionEquality().hash(grossWeight) ^
      const DeepCollectionEquality().hash(netWeight) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(needMultipleIntegration) ^
      const DeepCollectionEquality().hash(landingCost) ^
      const DeepCollectionEquality().hash(basePrize) ^
      const DeepCollectionEquality().hash(manuFacturedId) ^
      const DeepCollectionEquality().hash(manuFacturedName) ^
      const DeepCollectionEquality().hash(safetyStock) ^
      const DeepCollectionEquality().hash(reOrderPoint) ^
      const DeepCollectionEquality().hash(reorderQuantity) ^
      const DeepCollectionEquality().hash(salesBolock) ^
      const DeepCollectionEquality().hash(purchaseBlock) ^
      const DeepCollectionEquality().hash(ratioToEcommerce) ^
      const DeepCollectionEquality().hash(minMaxRatio) ^
      const DeepCollectionEquality().hash(minSalesOrderLimit) ^
      const DeepCollectionEquality().hash(maxSalesOrderLimit) ^
      const DeepCollectionEquality().hash(seblingId) ^
      const DeepCollectionEquality().hash(sibilingCode) ^
      const DeepCollectionEquality().hash(wholeSaleStock) ^
      const DeepCollectionEquality().hash(stockWarning) ^
      const DeepCollectionEquality().hash(itemCatelog) ^
      const DeepCollectionEquality().hash(itemImage) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(retailSellingPricePercentage) ^
      const DeepCollectionEquality().hash(wholeSellingPricePercentage) ^
      const DeepCollectionEquality().hash(onlineSellingPercenage) ^
      const DeepCollectionEquality().hash(vedioUrl) ^
      const DeepCollectionEquality().hash(avgGp) ^
      const DeepCollectionEquality().hash(targetedGp) ^
      const DeepCollectionEquality().hash(minPurchaseOrderLimit) ^
      const DeepCollectionEquality().hash(maxPurchaseOrderLimit) ^
      const DeepCollectionEquality().hash(importantInfo) ^
      const DeepCollectionEquality().hash(additionalInfo) ^
      const DeepCollectionEquality().hash(nutriantsFacts) ^
      const DeepCollectionEquality().hash(productDetails) ^
      const DeepCollectionEquality().hash(productFeatures) ^
      const DeepCollectionEquality().hash(aboutProducts) ^
      const DeepCollectionEquality().hash(productBehavior) ^
      const DeepCollectionEquality().hash(usageDirection) ^
      const DeepCollectionEquality().hash(vendorDetails) ^
      const DeepCollectionEquality().hash(uomCode) ^
      const DeepCollectionEquality().hash(alternativeBarcode) ^
      const DeepCollectionEquality().hash(alternativeQrCodeBarcode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(producedCountry) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(returnType) ^
      const DeepCollectionEquality().hash(variantStatus) ^
      const DeepCollectionEquality().hash(returnTime);

  @JsonKey(ignore: true)
  @override
  _$VariantPatchCopyWith<_VariantPatch> get copyWith =>
      __$VariantPatchCopyWithImpl<_VariantPatch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantPatchToJson(this);
  }
}

abstract class _VariantPatch implements VariantPatch {
  const factory _VariantPatch(
      {int? id,
      String? code,
      String? barcode,
      String? qrcode,
      double? vat,
      String? description,
      String? name,
      String? status,
      int? image1,
      String? image2,
      double? height,
      double? width,
      double? length,
      double? weight,
      String? image3,
      String? image4,
      String? image5,
      String? catalog1,
      String? catalog2,
      String? catalog3,
      String? catalog4,
      String? catalog5,
      String? catalog6,
      String? catalog7,
      String? catalog8,
      Storage? Ingrediants,
      Storage? storage,
      @JsonKey(name: "variant_name")
          String? variantName,
      @JsonKey(name: "maximum_gp")
          double? maxGp,
      @JsonKey(name: "minimum_gp")
          double? minGap,
      @JsonKey(name: "weight_uom_id")
          int? weightUomId,
      @JsonKey(name: "sales_uom")
          String? salesUom,
      @JsonKey(name: "purchase_uom")
          String? purchaseUom,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "variant_value")
          String? variantValue,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "gross_weight")
          String? grossWeight,
      @JsonKey(name: "net_weight")
          String? netWeight,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "need_multiple_integration")
          bool? needMultipleIntegration,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "base_price")
          double? basePrize,
      @JsonKey(name: "manufacture_id")
          int? manuFacturedId,
      @JsonKey(name: "manufacture_name")
          String? manuFacturedName,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reorderQuantity,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBolock,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "ratio_to_eccommerce")
          String? ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "min_sales_order_limit")
          int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSalesOrderLimit,
      @JsonKey(name: "sebling_id")
          int? seblingId,
      @JsonKey(name: "sibling_code")
          int? sibilingCode,
      @JsonKey(name: "whole_sale_stock")
          int? wholeSaleStock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "retail_selling_price_percentage")
          double? retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          double? wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          double? onlineSellingPercenage,
      @JsonKey(name: "vedio_url")
          String? vedioUrl,
      @JsonKey(name: "average_gp")
          double? avgGp,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "important_info")
          ProductFeatures? importantInfo,
      @JsonKey(name: "Additional_info")
          ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          ProductFeatures? nutriantsFacts,
      @JsonKey(name: "product_details")
          ProductFeatures? productDetails,
      @JsonKey(name: "product_features")
          ProductFeatures? productFeatures,
      @JsonKey(name: "about_the_products")
          Storage? aboutProducts,
      @JsonKey(name: "product_behaviour")
          List<productBehaviour>? productBehavior,
      @JsonKey(name: "usage_direction")
          Storage? usageDirection,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "variant_status")
          String? variantStatus,
      @JsonKey(name: "return_time")
          int? returnTime}) = _$_VariantPatch;

  factory _VariantPatch.fromJson(Map<String, dynamic> json) =
      _$_VariantPatch.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  String? get qrcode => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  int? get image1 => throw _privateConstructorUsedError;
  @override
  String? get image2 => throw _privateConstructorUsedError;
  @override
  double? get height => throw _privateConstructorUsedError;
  @override
  double? get width => throw _privateConstructorUsedError;
  @override
  double? get length => throw _privateConstructorUsedError;
  @override
  double? get weight => throw _privateConstructorUsedError;
  @override
  String? get image3 => throw _privateConstructorUsedError;
  @override
  String? get image4 => throw _privateConstructorUsedError;
  @override
  String? get image5 => throw _privateConstructorUsedError;
  @override
  String? get catalog1 => throw _privateConstructorUsedError;
  @override
  String? get catalog2 => throw _privateConstructorUsedError;
  @override
  String? get catalog3 => throw _privateConstructorUsedError;
  @override
  String? get catalog4 => throw _privateConstructorUsedError;
  @override
  String? get catalog5 => throw _privateConstructorUsedError;
  @override
  String? get catalog6 => throw _privateConstructorUsedError;
  @override
  String? get catalog7 => throw _privateConstructorUsedError;
  @override
  String? get catalog8 => throw _privateConstructorUsedError;
  @override
  Storage? get Ingrediants => throw _privateConstructorUsedError;
  @override
  Storage? get storage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_name")
  String? get variantName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "maximum_gp")
  double? get maxGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "minimum_gp")
  double? get minGap => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "weight_uom_id")
  int? get weightUomId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom")
  String? get salesUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "search_name")
  String? get searchName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_value")
  String? get variantValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "arabic_description")
  String? get arabicDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "additional_description")
  String? get additionalDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pos_name")
  String? get posName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "gross_weight")
  String? get grossWeight => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "net_weight")
  String? get netWeight => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "need_multiple_integration")
  bool? get needMultipleIntegration => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "landing_cost")
  double? get landingCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "base_price")
  double? get basePrize => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "manufacture_id")
  int? get manuFacturedId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "manufacture_name")
  String? get manuFacturedName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "safty_stock")
  int? get safetyStock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "reorder_quantity")
  int? get reorderQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_block", defaultValue: false)
  bool? get salesBolock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_block", defaultValue: false)
  bool? get purchaseBlock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "ratio_to_eccommerce")
  String? get ratioToEcommerce => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "min_max_ratio")
  String? get minMaxRatio => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sebling_id")
  int? get seblingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sibling_code")
  int? get sibilingCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "whole_sale_stock")
  int? get wholeSaleStock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_catalog", defaultValue: false)
  bool? get itemCatelog => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_image", defaultValue: false)
  bool? get itemImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "retail_selling_price_percentage")
  double? get retailSellingPricePercentage =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "wholesale_selling_price_percentage")
  double? get wholeSellingPricePercentage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "online_selling_price_percentage")
  double? get onlineSellingPercenage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vedio_url")
  String? get vedioUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "average_gp")
  double? get avgGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "targeted_gp")
  double? get targetedGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "min_purchase_order_limit")
  int? get minPurchaseOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "max_purchase_order_limit")
  int? get maxPurchaseOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "important_info")
  ProductFeatures? get importantInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Additional_info")
  ProductFeatures? get additionalInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Nutriants_facts")
  ProductFeatures? get nutriantsFacts => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_details")
  ProductFeatures? get productDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_features")
  ProductFeatures? get productFeatures => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "about_the_products")
  Storage? get aboutProducts => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_behaviour")
  List<productBehaviour>? get productBehavior =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "usage_direction")
  Storage? get usageDirection => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_details")
  List<VendorDetails>? get vendorDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "alternative_barcode")
  List<AlternativeBarcode>? get alternativeBarcode =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "alternative_qrcode")
  List<AlternativeBarcode>? get alternativeQrCodeBarcode =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "produced_country")
  String? get producedCountry => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_status")
  String? get variantStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantPatchCopyWith<_VariantPatch> get copyWith =>
      throw _privateConstructorUsedError;
}
