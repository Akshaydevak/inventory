// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variantpost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantPost _$VariantPostFromJson(Map<String, dynamic> json) {
  return _VariantPost.fromJson(json);
}

/// @nodoc
class _$VariantPostTearOff {
  const _$VariantPostTearOff();

  _VariantPost call(
      {int? id,
      String? code,
      double? vat,
      String? description,
      String? name,
      String? image1,
      int? image2,
      int? image3,
      int? image4,
      int? image5,
      int? catalog1,
      int? catalog2,
      int? catalog3,
      int? catalog4,
      int? catalog5,
      int? catalog6,
      int? catalog7,
      int? catalog8,
      int? length,
      int? width,
      int? height,
      Storage? Ingrediants,
      Storage? storage,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "inventory_name")
          String? inventoryName,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "var_alternative_rfid")
          String? varAlternativeRfid,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "vedio_url")
          String? vedioUrl,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "gross_weight")
          double? grossWeight,
      @JsonKey(name: "net_weight")
          double? netWeight,
      @JsonKey(name: "average_gp")
          double? avgGp,
      @JsonKey(name: "maximum_gp")
          double? maxGp,
      @JsonKey(name: "minimum_gp")
          double? minGap,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "retail_selling_price_percentage")
          double? retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          double? wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          double? onlineSellingPercenage,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "sales_uom")
          int? salesUom,
      @JsonKey(name: "sebling_id")
          int? seblingId,
      @JsonKey(name: "purchase_uom")
          int? purchaseUom,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reorderQuantity,
      @JsonKey(name: "whole_sale_stock")
          int? wholeSaleStock,
      @JsonKey(name: "min_sales_order_limit")
          int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSalesOrderLimit,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBolock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "ratio_to_eccommerce")
          String? ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "variant_status")
          String? variantStatus,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "base_price")
          double? basePrize,
      @JsonKey(name: "about_the_products")
          Storage? aboutProducts,
      @JsonKey(name: "product_details")
          ProductFeatures? productDetails,
      @JsonKey(name: "product_features")
          ProductFeatures? productFeatures,
      @JsonKey(name: "Additional_info")
          ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          ProductFeatures? nutriantsFacts,
      @JsonKey(name: "usage_direction")
          Storage? usageDirection,
      @JsonKey(name: "important_info")
          ProductFeatures? importantInfo,
      @JsonKey(name: "product_behaviour")
          List<productBehaviour>? productBehavior}) {
    return _VariantPost(
      id: id,
      code: code,
      vat: vat,
      description: description,
      name: name,
      image1: image1,
      image2: image2,
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
      length: length,
      width: width,
      height: height,
      Ingrediants: Ingrediants,
      storage: storage,
      inventoryId: inventoryId,
      inventoryName: inventoryName,
      uomCode: uomCode,
      varAlternativeRfid: varAlternativeRfid,
      alternativeBarcode: alternativeBarcode,
      alternativeQrCodeBarcode: alternativeQrCodeBarcode,
      vendorDetails: vendorDetails,
      vedioUrl: vedioUrl,
      searchName: searchName,
      posName: posName,
      displayName: displayName,
      producedCountry: producedCountry,
      arabicDescription: arabicDescription,
      additionalDescription: additionalDescription,
      unitCost: unitCost,
      actualCost: actualCost,
      landingCost: landingCost,
      grossWeight: grossWeight,
      netWeight: netWeight,
      avgGp: avgGp,
      maxGp: maxGp,
      minGap: minGap,
      targetedGp: targetedGp,
      excessTax: excessTax,
      retailSellingPricePercentage: retailSellingPricePercentage,
      wholeSellingPricePercentage: wholeSellingPricePercentage,
      onlineSellingPercenage: onlineSellingPercenage,
      safetyStock: safetyStock,
      salesUom: salesUom,
      seblingId: seblingId,
      purchaseUom: purchaseUom,
      reOrderPoint: reOrderPoint,
      reorderQuantity: reorderQuantity,
      wholeSaleStock: wholeSaleStock,
      minSalesOrderLimit: minSalesOrderLimit,
      maxSalesOrderLimit: maxSalesOrderLimit,
      minPurchaseOrderLimit: minPurchaseOrderLimit,
      maxPurchaseOrderLimit: maxPurchaseOrderLimit,
      purchaseBlock: purchaseBlock,
      salesBolock: salesBolock,
      stockWarning: stockWarning,
      isActive: isActive,
      itemCatelog: itemCatelog,
      itemImage: itemImage,
      ratioToEcommerce: ratioToEcommerce,
      minMaxRatio: minMaxRatio,
      returnType: returnType,
      variantStatus: variantStatus,
      returnTime: returnTime,
      basePrize: basePrize,
      aboutProducts: aboutProducts,
      productDetails: productDetails,
      productFeatures: productFeatures,
      additionalInfo: additionalInfo,
      nutriantsFacts: nutriantsFacts,
      usageDirection: usageDirection,
      importantInfo: importantInfo,
      productBehavior: productBehavior,
    );
  }

  VariantPost fromJson(Map<String, Object> json) {
    return VariantPost.fromJson(json);
  }
}

/// @nodoc
const $VariantPost = _$VariantPostTearOff();

/// @nodoc
mixin _$VariantPost {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image1 => throw _privateConstructorUsedError;
  int? get image2 => throw _privateConstructorUsedError;
  int? get image3 => throw _privateConstructorUsedError;
  int? get image4 => throw _privateConstructorUsedError;
  int? get image5 => throw _privateConstructorUsedError;
  int? get catalog1 => throw _privateConstructorUsedError;
  int? get catalog2 => throw _privateConstructorUsedError;
  int? get catalog3 => throw _privateConstructorUsedError;
  int? get catalog4 => throw _privateConstructorUsedError;
  int? get catalog5 => throw _privateConstructorUsedError;
  int? get catalog6 => throw _privateConstructorUsedError;
  int? get catalog7 => throw _privateConstructorUsedError;
  int? get catalog8 => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  Storage? get Ingrediants => throw _privateConstructorUsedError;
  Storage? get storage => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_name")
  String? get inventoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @JsonKey(name: "var_alternative_rfid")
  String? get varAlternativeRfid => throw _privateConstructorUsedError;
  @JsonKey(name: "alternative_barcode")
  List<AlternativeBarcode>? get alternativeBarcode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "alternative_qrcode")
  List<AlternativeBarcode>? get alternativeQrCodeBarcode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_details")
  List<VendorDetails>? get vendorDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "vedio_url")
  String? get vedioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "search_name")
  String? get searchName => throw _privateConstructorUsedError;
  @JsonKey(name: "pos_name")
  String? get posName => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "produced_country")
  String? get producedCountry => throw _privateConstructorUsedError;
  @JsonKey(name: "arabic_description")
  String? get arabicDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_description")
  String? get additionalDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "landing_cost")
  double? get landingCost => throw _privateConstructorUsedError;
  @JsonKey(name: "gross_weight")
  double? get grossWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "net_weight")
  double? get netWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "average_gp")
  double? get avgGp => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_gp")
  double? get maxGp => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_gp")
  double? get minGap => throw _privateConstructorUsedError;
  @JsonKey(name: "targeted_gp")
  double? get targetedGp => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "retail_selling_price_percentage")
  double? get retailSellingPricePercentage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "wholesale_selling_price_percentage")
  double? get wholeSellingPricePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "online_selling_price_percentage")
  double? get onlineSellingPercenage => throw _privateConstructorUsedError;
  @JsonKey(name: "safty_stock")
  int? get safetyStock => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom")
  int? get salesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "sebling_id")
  int? get seblingId => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom")
  int? get purchaseUom => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_quantity")
  int? get reorderQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "whole_sale_stock")
  int? get wholeSaleStock => throw _privateConstructorUsedError;
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "min_purchase_order_limit")
  int? get minPurchaseOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "max_purchase_order_limit")
  int? get maxPurchaseOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_block", defaultValue: false)
  bool? get purchaseBlock => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_block", defaultValue: false)
  bool? get salesBolock => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "item_catalog", defaultValue: false)
  bool? get itemCatelog => throw _privateConstructorUsedError;
  @JsonKey(name: "item_image", defaultValue: false)
  bool? get itemImage => throw _privateConstructorUsedError;
  @JsonKey(name: "ratio_to_eccommerce")
  String? get ratioToEcommerce => throw _privateConstructorUsedError;
  @JsonKey(name: "min_max_ratio")
  String? get minMaxRatio => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_status")
  String? get variantStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "base_price")
  double? get basePrize => throw _privateConstructorUsedError;
  @JsonKey(name: "about_the_products")
  Storage? get aboutProducts => throw _privateConstructorUsedError;
  @JsonKey(name: "product_details")
  ProductFeatures? get productDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "product_features")
  ProductFeatures? get productFeatures => throw _privateConstructorUsedError;
  @JsonKey(name: "Additional_info")
  ProductFeatures? get additionalInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "Nutriants_facts")
  ProductFeatures? get nutriantsFacts => throw _privateConstructorUsedError;
  @JsonKey(name: "usage_direction")
  Storage? get usageDirection => throw _privateConstructorUsedError;
  @JsonKey(name: "important_info")
  ProductFeatures? get importantInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "product_behaviour")
  List<productBehaviour>? get productBehavior =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantPostCopyWith<VariantPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantPostCopyWith<$Res> {
  factory $VariantPostCopyWith(
          VariantPost value, $Res Function(VariantPost) then) =
      _$VariantPostCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      double? vat,
      String? description,
      String? name,
      String? image1,
      int? image2,
      int? image3,
      int? image4,
      int? image5,
      int? catalog1,
      int? catalog2,
      int? catalog3,
      int? catalog4,
      int? catalog5,
      int? catalog6,
      int? catalog7,
      int? catalog8,
      int? length,
      int? width,
      int? height,
      Storage? Ingrediants,
      Storage? storage,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "inventory_name")
          String? inventoryName,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "var_alternative_rfid")
          String? varAlternativeRfid,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "vedio_url")
          String? vedioUrl,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "gross_weight")
          double? grossWeight,
      @JsonKey(name: "net_weight")
          double? netWeight,
      @JsonKey(name: "average_gp")
          double? avgGp,
      @JsonKey(name: "maximum_gp")
          double? maxGp,
      @JsonKey(name: "minimum_gp")
          double? minGap,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "retail_selling_price_percentage")
          double? retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          double? wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          double? onlineSellingPercenage,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "sales_uom")
          int? salesUom,
      @JsonKey(name: "sebling_id")
          int? seblingId,
      @JsonKey(name: "purchase_uom")
          int? purchaseUom,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reorderQuantity,
      @JsonKey(name: "whole_sale_stock")
          int? wholeSaleStock,
      @JsonKey(name: "min_sales_order_limit")
          int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSalesOrderLimit,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBolock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "ratio_to_eccommerce")
          String? ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "variant_status")
          String? variantStatus,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "base_price")
          double? basePrize,
      @JsonKey(name: "about_the_products")
          Storage? aboutProducts,
      @JsonKey(name: "product_details")
          ProductFeatures? productDetails,
      @JsonKey(name: "product_features")
          ProductFeatures? productFeatures,
      @JsonKey(name: "Additional_info")
          ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          ProductFeatures? nutriantsFacts,
      @JsonKey(name: "usage_direction")
          Storage? usageDirection,
      @JsonKey(name: "important_info")
          ProductFeatures? importantInfo,
      @JsonKey(name: "product_behaviour")
          List<productBehaviour>? productBehavior});

  $StorageCopyWith<$Res>? get Ingrediants;
  $StorageCopyWith<$Res>? get storage;
  $StorageCopyWith<$Res>? get aboutProducts;
  $ProductFeaturesCopyWith<$Res>? get productDetails;
  $ProductFeaturesCopyWith<$Res>? get productFeatures;
  $ProductFeaturesCopyWith<$Res>? get additionalInfo;
  $ProductFeaturesCopyWith<$Res>? get nutriantsFacts;
  $StorageCopyWith<$Res>? get usageDirection;
  $ProductFeaturesCopyWith<$Res>? get importantInfo;
}

/// @nodoc
class _$VariantPostCopyWithImpl<$Res> implements $VariantPostCopyWith<$Res> {
  _$VariantPostCopyWithImpl(this._value, this._then);

  final VariantPost _value;
  // ignore: unused_field
  final $Res Function(VariantPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? vat = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
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
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? Ingrediants = freezed,
    Object? storage = freezed,
    Object? inventoryId = freezed,
    Object? inventoryName = freezed,
    Object? uomCode = freezed,
    Object? varAlternativeRfid = freezed,
    Object? alternativeBarcode = freezed,
    Object? alternativeQrCodeBarcode = freezed,
    Object? vendorDetails = freezed,
    Object? vedioUrl = freezed,
    Object? searchName = freezed,
    Object? posName = freezed,
    Object? displayName = freezed,
    Object? producedCountry = freezed,
    Object? arabicDescription = freezed,
    Object? additionalDescription = freezed,
    Object? unitCost = freezed,
    Object? actualCost = freezed,
    Object? landingCost = freezed,
    Object? grossWeight = freezed,
    Object? netWeight = freezed,
    Object? avgGp = freezed,
    Object? maxGp = freezed,
    Object? minGap = freezed,
    Object? targetedGp = freezed,
    Object? excessTax = freezed,
    Object? retailSellingPricePercentage = freezed,
    Object? wholeSellingPricePercentage = freezed,
    Object? onlineSellingPercenage = freezed,
    Object? safetyStock = freezed,
    Object? salesUom = freezed,
    Object? seblingId = freezed,
    Object? purchaseUom = freezed,
    Object? reOrderPoint = freezed,
    Object? reorderQuantity = freezed,
    Object? wholeSaleStock = freezed,
    Object? minSalesOrderLimit = freezed,
    Object? maxSalesOrderLimit = freezed,
    Object? minPurchaseOrderLimit = freezed,
    Object? maxPurchaseOrderLimit = freezed,
    Object? purchaseBlock = freezed,
    Object? salesBolock = freezed,
    Object? stockWarning = freezed,
    Object? isActive = freezed,
    Object? itemCatelog = freezed,
    Object? itemImage = freezed,
    Object? ratioToEcommerce = freezed,
    Object? minMaxRatio = freezed,
    Object? returnType = freezed,
    Object? variantStatus = freezed,
    Object? returnTime = freezed,
    Object? basePrize = freezed,
    Object? aboutProducts = freezed,
    Object? productDetails = freezed,
    Object? productFeatures = freezed,
    Object? additionalInfo = freezed,
    Object? nutriantsFacts = freezed,
    Object? usageDirection = freezed,
    Object? importantInfo = freezed,
    Object? productBehavior = freezed,
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
      image1: image1 == freezed
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as int?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as int?,
      image4: image4 == freezed
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as int?,
      image5: image5 == freezed
          ? _value.image5
          : image5 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog1: catalog1 == freezed
          ? _value.catalog1
          : catalog1 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog2: catalog2 == freezed
          ? _value.catalog2
          : catalog2 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog3: catalog3 == freezed
          ? _value.catalog3
          : catalog3 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog4: catalog4 == freezed
          ? _value.catalog4
          : catalog4 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog5: catalog5 == freezed
          ? _value.catalog5
          : catalog5 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog6: catalog6 == freezed
          ? _value.catalog6
          : catalog6 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog7: catalog7 == freezed
          ? _value.catalog7
          : catalog7 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog8: catalog8 == freezed
          ? _value.catalog8
          : catalog8 // ignore: cast_nullable_to_non_nullable
              as int?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      Ingrediants: Ingrediants == freezed
          ? _value.Ingrediants
          : Ingrediants // ignore: cast_nullable_to_non_nullable
              as Storage?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as Storage?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryName: inventoryName == freezed
          ? _value.inventoryName
          : inventoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      varAlternativeRfid: varAlternativeRfid == freezed
          ? _value.varAlternativeRfid
          : varAlternativeRfid // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeBarcode: alternativeBarcode == freezed
          ? _value.alternativeBarcode
          : alternativeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      alternativeQrCodeBarcode: alternativeQrCodeBarcode == freezed
          ? _value.alternativeQrCodeBarcode
          : alternativeQrCodeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      vendorDetails: vendorDetails == freezed
          ? _value.vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as List<VendorDetails>?,
      vedioUrl: vedioUrl == freezed
          ? _value.vedioUrl
          : vedioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: searchName == freezed
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      posName: posName == freezed
          ? _value.posName
          : posName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      producedCountry: producedCountry == freezed
          ? _value.producedCountry
          : producedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicDescription: arabicDescription == freezed
          ? _value.arabicDescription
          : arabicDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalDescription: additionalDescription == freezed
          ? _value.additionalDescription
          : additionalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      landingCost: landingCost == freezed
          ? _value.landingCost
          : landingCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grossWeight: grossWeight == freezed
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      netWeight: netWeight == freezed
          ? _value.netWeight
          : netWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      avgGp: avgGp == freezed
          ? _value.avgGp
          : avgGp // ignore: cast_nullable_to_non_nullable
              as double?,
      maxGp: maxGp == freezed
          ? _value.maxGp
          : maxGp // ignore: cast_nullable_to_non_nullable
              as double?,
      minGap: minGap == freezed
          ? _value.minGap
          : minGap // ignore: cast_nullable_to_non_nullable
              as double?,
      targetedGp: targetedGp == freezed
          ? _value.targetedGp
          : targetedGp // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
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
      safetyStock: safetyStock == freezed
          ? _value.safetyStock
          : safetyStock // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as int?,
      seblingId: seblingId == freezed
          ? _value.seblingId
          : seblingId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderPoint: reOrderPoint == freezed
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      reorderQuantity: reorderQuantity == freezed
          ? _value.reorderQuantity
          : reorderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      wholeSaleStock: wholeSaleStock == freezed
          ? _value.wholeSaleStock
          : wholeSaleStock // ignore: cast_nullable_to_non_nullable
              as int?,
      minSalesOrderLimit: minSalesOrderLimit == freezed
          ? _value.minSalesOrderLimit
          : minSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderLimit: maxSalesOrderLimit == freezed
          ? _value.maxSalesOrderLimit
          : maxSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      minPurchaseOrderLimit: minPurchaseOrderLimit == freezed
          ? _value.minPurchaseOrderLimit
          : minPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPurchaseOrderLimit: maxPurchaseOrderLimit == freezed
          ? _value.maxPurchaseOrderLimit
          : maxPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBolock: salesBolock == freezed
          ? _value.salesBolock
          : salesBolock // ignore: cast_nullable_to_non_nullable
              as bool?,
      stockWarning: stockWarning == freezed
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemCatelog: itemCatelog == freezed
          ? _value.itemCatelog
          : itemCatelog // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemImage: itemImage == freezed
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      ratioToEcommerce: ratioToEcommerce == freezed
          ? _value.ratioToEcommerce
          : ratioToEcommerce // ignore: cast_nullable_to_non_nullable
              as String?,
      minMaxRatio: minMaxRatio == freezed
          ? _value.minMaxRatio
          : minMaxRatio // ignore: cast_nullable_to_non_nullable
              as String?,
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
      basePrize: basePrize == freezed
          ? _value.basePrize
          : basePrize // ignore: cast_nullable_to_non_nullable
              as double?,
      aboutProducts: aboutProducts == freezed
          ? _value.aboutProducts
          : aboutProducts // ignore: cast_nullable_to_non_nullable
              as Storage?,
      productDetails: productDetails == freezed
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productFeatures: productFeatures == freezed
          ? _value.productFeatures
          : productFeatures // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      nutriantsFacts: nutriantsFacts == freezed
          ? _value.nutriantsFacts
          : nutriantsFacts // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      usageDirection: usageDirection == freezed
          ? _value.usageDirection
          : usageDirection // ignore: cast_nullable_to_non_nullable
              as Storage?,
      importantInfo: importantInfo == freezed
          ? _value.importantInfo
          : importantInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productBehavior: productBehavior == freezed
          ? _value.productBehavior
          : productBehavior // ignore: cast_nullable_to_non_nullable
              as List<productBehaviour>?,
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
  $StorageCopyWith<$Res>? get aboutProducts {
    if (_value.aboutProducts == null) {
      return null;
    }

    return $StorageCopyWith<$Res>(_value.aboutProducts!, (value) {
      return _then(_value.copyWith(aboutProducts: value));
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
  $StorageCopyWith<$Res>? get usageDirection {
    if (_value.usageDirection == null) {
      return null;
    }

    return $StorageCopyWith<$Res>(_value.usageDirection!, (value) {
      return _then(_value.copyWith(usageDirection: value));
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
}

/// @nodoc
abstract class _$VariantPostCopyWith<$Res>
    implements $VariantPostCopyWith<$Res> {
  factory _$VariantPostCopyWith(
          _VariantPost value, $Res Function(_VariantPost) then) =
      __$VariantPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      double? vat,
      String? description,
      String? name,
      String? image1,
      int? image2,
      int? image3,
      int? image4,
      int? image5,
      int? catalog1,
      int? catalog2,
      int? catalog3,
      int? catalog4,
      int? catalog5,
      int? catalog6,
      int? catalog7,
      int? catalog8,
      int? length,
      int? width,
      int? height,
      Storage? Ingrediants,
      Storage? storage,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "inventory_name")
          String? inventoryName,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "var_alternative_rfid")
          String? varAlternativeRfid,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "vedio_url")
          String? vedioUrl,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "gross_weight")
          double? grossWeight,
      @JsonKey(name: "net_weight")
          double? netWeight,
      @JsonKey(name: "average_gp")
          double? avgGp,
      @JsonKey(name: "maximum_gp")
          double? maxGp,
      @JsonKey(name: "minimum_gp")
          double? minGap,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "retail_selling_price_percentage")
          double? retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          double? wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          double? onlineSellingPercenage,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "sales_uom")
          int? salesUom,
      @JsonKey(name: "sebling_id")
          int? seblingId,
      @JsonKey(name: "purchase_uom")
          int? purchaseUom,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reorderQuantity,
      @JsonKey(name: "whole_sale_stock")
          int? wholeSaleStock,
      @JsonKey(name: "min_sales_order_limit")
          int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSalesOrderLimit,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBolock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "ratio_to_eccommerce")
          String? ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "variant_status")
          String? variantStatus,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "base_price")
          double? basePrize,
      @JsonKey(name: "about_the_products")
          Storage? aboutProducts,
      @JsonKey(name: "product_details")
          ProductFeatures? productDetails,
      @JsonKey(name: "product_features")
          ProductFeatures? productFeatures,
      @JsonKey(name: "Additional_info")
          ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          ProductFeatures? nutriantsFacts,
      @JsonKey(name: "usage_direction")
          Storage? usageDirection,
      @JsonKey(name: "important_info")
          ProductFeatures? importantInfo,
      @JsonKey(name: "product_behaviour")
          List<productBehaviour>? productBehavior});

  @override
  $StorageCopyWith<$Res>? get Ingrediants;
  @override
  $StorageCopyWith<$Res>? get storage;
  @override
  $StorageCopyWith<$Res>? get aboutProducts;
  @override
  $ProductFeaturesCopyWith<$Res>? get productDetails;
  @override
  $ProductFeaturesCopyWith<$Res>? get productFeatures;
  @override
  $ProductFeaturesCopyWith<$Res>? get additionalInfo;
  @override
  $ProductFeaturesCopyWith<$Res>? get nutriantsFacts;
  @override
  $StorageCopyWith<$Res>? get usageDirection;
  @override
  $ProductFeaturesCopyWith<$Res>? get importantInfo;
}

/// @nodoc
class __$VariantPostCopyWithImpl<$Res> extends _$VariantPostCopyWithImpl<$Res>
    implements _$VariantPostCopyWith<$Res> {
  __$VariantPostCopyWithImpl(
      _VariantPost _value, $Res Function(_VariantPost) _then)
      : super(_value, (v) => _then(v as _VariantPost));

  @override
  _VariantPost get _value => super._value as _VariantPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? vat = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? image1 = freezed,
    Object? image2 = freezed,
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
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? Ingrediants = freezed,
    Object? storage = freezed,
    Object? inventoryId = freezed,
    Object? inventoryName = freezed,
    Object? uomCode = freezed,
    Object? varAlternativeRfid = freezed,
    Object? alternativeBarcode = freezed,
    Object? alternativeQrCodeBarcode = freezed,
    Object? vendorDetails = freezed,
    Object? vedioUrl = freezed,
    Object? searchName = freezed,
    Object? posName = freezed,
    Object? displayName = freezed,
    Object? producedCountry = freezed,
    Object? arabicDescription = freezed,
    Object? additionalDescription = freezed,
    Object? unitCost = freezed,
    Object? actualCost = freezed,
    Object? landingCost = freezed,
    Object? grossWeight = freezed,
    Object? netWeight = freezed,
    Object? avgGp = freezed,
    Object? maxGp = freezed,
    Object? minGap = freezed,
    Object? targetedGp = freezed,
    Object? excessTax = freezed,
    Object? retailSellingPricePercentage = freezed,
    Object? wholeSellingPricePercentage = freezed,
    Object? onlineSellingPercenage = freezed,
    Object? safetyStock = freezed,
    Object? salesUom = freezed,
    Object? seblingId = freezed,
    Object? purchaseUom = freezed,
    Object? reOrderPoint = freezed,
    Object? reorderQuantity = freezed,
    Object? wholeSaleStock = freezed,
    Object? minSalesOrderLimit = freezed,
    Object? maxSalesOrderLimit = freezed,
    Object? minPurchaseOrderLimit = freezed,
    Object? maxPurchaseOrderLimit = freezed,
    Object? purchaseBlock = freezed,
    Object? salesBolock = freezed,
    Object? stockWarning = freezed,
    Object? isActive = freezed,
    Object? itemCatelog = freezed,
    Object? itemImage = freezed,
    Object? ratioToEcommerce = freezed,
    Object? minMaxRatio = freezed,
    Object? returnType = freezed,
    Object? variantStatus = freezed,
    Object? returnTime = freezed,
    Object? basePrize = freezed,
    Object? aboutProducts = freezed,
    Object? productDetails = freezed,
    Object? productFeatures = freezed,
    Object? additionalInfo = freezed,
    Object? nutriantsFacts = freezed,
    Object? usageDirection = freezed,
    Object? importantInfo = freezed,
    Object? productBehavior = freezed,
  }) {
    return _then(_VariantPost(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
      image1: image1 == freezed
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String?,
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as int?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as int?,
      image4: image4 == freezed
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as int?,
      image5: image5 == freezed
          ? _value.image5
          : image5 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog1: catalog1 == freezed
          ? _value.catalog1
          : catalog1 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog2: catalog2 == freezed
          ? _value.catalog2
          : catalog2 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog3: catalog3 == freezed
          ? _value.catalog3
          : catalog3 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog4: catalog4 == freezed
          ? _value.catalog4
          : catalog4 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog5: catalog5 == freezed
          ? _value.catalog5
          : catalog5 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog6: catalog6 == freezed
          ? _value.catalog6
          : catalog6 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog7: catalog7 == freezed
          ? _value.catalog7
          : catalog7 // ignore: cast_nullable_to_non_nullable
              as int?,
      catalog8: catalog8 == freezed
          ? _value.catalog8
          : catalog8 // ignore: cast_nullable_to_non_nullable
              as int?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      Ingrediants: Ingrediants == freezed
          ? _value.Ingrediants
          : Ingrediants // ignore: cast_nullable_to_non_nullable
              as Storage?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as Storage?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryName: inventoryName == freezed
          ? _value.inventoryName
          : inventoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      varAlternativeRfid: varAlternativeRfid == freezed
          ? _value.varAlternativeRfid
          : varAlternativeRfid // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeBarcode: alternativeBarcode == freezed
          ? _value.alternativeBarcode
          : alternativeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      alternativeQrCodeBarcode: alternativeQrCodeBarcode == freezed
          ? _value.alternativeQrCodeBarcode
          : alternativeQrCodeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      vendorDetails: vendorDetails == freezed
          ? _value.vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as List<VendorDetails>?,
      vedioUrl: vedioUrl == freezed
          ? _value.vedioUrl
          : vedioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: searchName == freezed
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      posName: posName == freezed
          ? _value.posName
          : posName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      producedCountry: producedCountry == freezed
          ? _value.producedCountry
          : producedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicDescription: arabicDescription == freezed
          ? _value.arabicDescription
          : arabicDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalDescription: additionalDescription == freezed
          ? _value.additionalDescription
          : additionalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      landingCost: landingCost == freezed
          ? _value.landingCost
          : landingCost // ignore: cast_nullable_to_non_nullable
              as double?,
      grossWeight: grossWeight == freezed
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      netWeight: netWeight == freezed
          ? _value.netWeight
          : netWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      avgGp: avgGp == freezed
          ? _value.avgGp
          : avgGp // ignore: cast_nullable_to_non_nullable
              as double?,
      maxGp: maxGp == freezed
          ? _value.maxGp
          : maxGp // ignore: cast_nullable_to_non_nullable
              as double?,
      minGap: minGap == freezed
          ? _value.minGap
          : minGap // ignore: cast_nullable_to_non_nullable
              as double?,
      targetedGp: targetedGp == freezed
          ? _value.targetedGp
          : targetedGp // ignore: cast_nullable_to_non_nullable
              as double?,
      excessTax: excessTax == freezed
          ? _value.excessTax
          : excessTax // ignore: cast_nullable_to_non_nullable
              as double?,
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
      safetyStock: safetyStock == freezed
          ? _value.safetyStock
          : safetyStock // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUom: salesUom == freezed
          ? _value.salesUom
          : salesUom // ignore: cast_nullable_to_non_nullable
              as int?,
      seblingId: seblingId == freezed
          ? _value.seblingId
          : seblingId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseUom: purchaseUom == freezed
          ? _value.purchaseUom
          : purchaseUom // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderPoint: reOrderPoint == freezed
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      reorderQuantity: reorderQuantity == freezed
          ? _value.reorderQuantity
          : reorderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      wholeSaleStock: wholeSaleStock == freezed
          ? _value.wholeSaleStock
          : wholeSaleStock // ignore: cast_nullable_to_non_nullable
              as int?,
      minSalesOrderLimit: minSalesOrderLimit == freezed
          ? _value.minSalesOrderLimit
          : minSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderLimit: maxSalesOrderLimit == freezed
          ? _value.maxSalesOrderLimit
          : maxSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      minPurchaseOrderLimit: minPurchaseOrderLimit == freezed
          ? _value.minPurchaseOrderLimit
          : minPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPurchaseOrderLimit: maxPurchaseOrderLimit == freezed
          ? _value.maxPurchaseOrderLimit
          : maxPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBolock: salesBolock == freezed
          ? _value.salesBolock
          : salesBolock // ignore: cast_nullable_to_non_nullable
              as bool?,
      stockWarning: stockWarning == freezed
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemCatelog: itemCatelog == freezed
          ? _value.itemCatelog
          : itemCatelog // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemImage: itemImage == freezed
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      ratioToEcommerce: ratioToEcommerce == freezed
          ? _value.ratioToEcommerce
          : ratioToEcommerce // ignore: cast_nullable_to_non_nullable
              as String?,
      minMaxRatio: minMaxRatio == freezed
          ? _value.minMaxRatio
          : minMaxRatio // ignore: cast_nullable_to_non_nullable
              as String?,
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
      basePrize: basePrize == freezed
          ? _value.basePrize
          : basePrize // ignore: cast_nullable_to_non_nullable
              as double?,
      aboutProducts: aboutProducts == freezed
          ? _value.aboutProducts
          : aboutProducts // ignore: cast_nullable_to_non_nullable
              as Storage?,
      productDetails: productDetails == freezed
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productFeatures: productFeatures == freezed
          ? _value.productFeatures
          : productFeatures // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      nutriantsFacts: nutriantsFacts == freezed
          ? _value.nutriantsFacts
          : nutriantsFacts // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      usageDirection: usageDirection == freezed
          ? _value.usageDirection
          : usageDirection // ignore: cast_nullable_to_non_nullable
              as Storage?,
      importantInfo: importantInfo == freezed
          ? _value.importantInfo
          : importantInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productBehavior: productBehavior == freezed
          ? _value.productBehavior
          : productBehavior // ignore: cast_nullable_to_non_nullable
              as List<productBehaviour>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantPost implements _VariantPost {
  const _$_VariantPost(
      {this.id,
      this.code,
      this.vat,
      this.description,
      this.name,
      this.image1,
      this.image2,
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
      this.length,
      this.width,
      this.height,
      this.Ingrediants,
      this.storage,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
      @JsonKey(name: "inventory_name")
          this.inventoryName,
      @JsonKey(name: "uom_code")
          this.uomCode,
      @JsonKey(name: "var_alternative_rfid")
          this.varAlternativeRfid,
      @JsonKey(name: "alternative_barcode")
          this.alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          this.alternativeQrCodeBarcode,
      @JsonKey(name: "vendor_details")
          this.vendorDetails,
      @JsonKey(name: "vedio_url")
          this.vedioUrl,
      @JsonKey(name: "search_name")
          this.searchName,
      @JsonKey(name: "pos_name")
          this.posName,
      @JsonKey(name: "display_name")
          this.displayName,
      @JsonKey(name: "produced_country")
          this.producedCountry,
      @JsonKey(name: "arabic_description")
          this.arabicDescription,
      @JsonKey(name: "additional_description")
          this.additionalDescription,
      @JsonKey(name: "unit_cost")
          this.unitCost,
      @JsonKey(name: "actual_cost")
          this.actualCost,
      @JsonKey(name: "landing_cost")
          this.landingCost,
      @JsonKey(name: "gross_weight")
          this.grossWeight,
      @JsonKey(name: "net_weight")
          this.netWeight,
      @JsonKey(name: "average_gp")
          this.avgGp,
      @JsonKey(name: "maximum_gp")
          this.maxGp,
      @JsonKey(name: "minimum_gp")
          this.minGap,
      @JsonKey(name: "targeted_gp")
          this.targetedGp,
      @JsonKey(name: "excess_tax")
          this.excessTax,
      @JsonKey(name: "retail_selling_price_percentage")
          this.retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          this.wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          this.onlineSellingPercenage,
      @JsonKey(name: "safty_stock")
          this.safetyStock,
      @JsonKey(name: "sales_uom")
          this.salesUom,
      @JsonKey(name: "sebling_id")
          this.seblingId,
      @JsonKey(name: "purchase_uom")
          this.purchaseUom,
      @JsonKey(name: "reorder_point")
          this.reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          this.reorderQuantity,
      @JsonKey(name: "whole_sale_stock")
          this.wholeSaleStock,
      @JsonKey(name: "min_sales_order_limit")
          this.minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          this.maxSalesOrderLimit,
      @JsonKey(name: "min_purchase_order_limit")
          this.minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          this.maxPurchaseOrderLimit,
      @JsonKey(name: "purchase_block", defaultValue: false)
          this.purchaseBlock,
      @JsonKey(name: "sales_block", defaultValue: false)
          this.salesBolock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          this.stockWarning,
      @JsonKey(name: "is_active", defaultValue: false)
          this.isActive,
      @JsonKey(name: "item_catalog", defaultValue: false)
          this.itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          this.itemImage,
      @JsonKey(name: "ratio_to_eccommerce")
          this.ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          this.minMaxRatio,
      @JsonKey(name: "return_type")
          this.returnType,
      @JsonKey(name: "variant_status")
          this.variantStatus,
      @JsonKey(name: "return_time")
          this.returnTime,
      @JsonKey(name: "base_price")
          this.basePrize,
      @JsonKey(name: "about_the_products")
          this.aboutProducts,
      @JsonKey(name: "product_details")
          this.productDetails,
      @JsonKey(name: "product_features")
          this.productFeatures,
      @JsonKey(name: "Additional_info")
          this.additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          this.nutriantsFacts,
      @JsonKey(name: "usage_direction")
          this.usageDirection,
      @JsonKey(name: "important_info")
          this.importantInfo,
      @JsonKey(name: "product_behaviour")
          this.productBehavior});

  factory _$_VariantPost.fromJson(Map<String, dynamic> json) =>
      _$$_VariantPostFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final double? vat;
  @override
  final String? description;
  @override
  final String? name;
  @override
  final String? image1;
  @override
  final int? image2;
  @override
  final int? image3;
  @override
  final int? image4;
  @override
  final int? image5;
  @override
  final int? catalog1;
  @override
  final int? catalog2;
  @override
  final int? catalog3;
  @override
  final int? catalog4;
  @override
  final int? catalog5;
  @override
  final int? catalog6;
  @override
  final int? catalog7;
  @override
  final int? catalog8;
  @override
  final int? length;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final Storage? Ingrediants;
  @override
  final Storage? storage;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "inventory_name")
  final String? inventoryName;
  @override
  @JsonKey(name: "uom_code")
  final String? uomCode;
  @override
  @JsonKey(name: "var_alternative_rfid")
  final String? varAlternativeRfid;
  @override
  @JsonKey(name: "alternative_barcode")
  final List<AlternativeBarcode>? alternativeBarcode;
  @override
  @JsonKey(name: "alternative_qrcode")
  final List<AlternativeBarcode>? alternativeQrCodeBarcode;
  @override
  @JsonKey(name: "vendor_details")
  final List<VendorDetails>? vendorDetails;
  @override
  @JsonKey(name: "vedio_url")
  final String? vedioUrl;
  @override
  @JsonKey(name: "search_name")
  final String? searchName;
  @override
  @JsonKey(name: "pos_name")
  final String? posName;
  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "produced_country")
  final String? producedCountry;
  @override
  @JsonKey(name: "arabic_description")
  final String? arabicDescription;
  @override
  @JsonKey(name: "additional_description")
  final String? additionalDescription;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "landing_cost")
  final double? landingCost;
  @override
  @JsonKey(name: "gross_weight")
  final double? grossWeight;
  @override
  @JsonKey(name: "net_weight")
  final double? netWeight;
  @override
  @JsonKey(name: "average_gp")
  final double? avgGp;
  @override
  @JsonKey(name: "maximum_gp")
  final double? maxGp;
  @override
  @JsonKey(name: "minimum_gp")
  final double? minGap;
  @override
  @JsonKey(name: "targeted_gp")
  final double? targetedGp;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
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
  @JsonKey(name: "safty_stock")
  final int? safetyStock;
  @override
  @JsonKey(name: "sales_uom")
  final int? salesUom;
  @override
  @JsonKey(name: "sebling_id")
  final int? seblingId;
  @override
  @JsonKey(name: "purchase_uom")
  final int? purchaseUom;
  @override
  @JsonKey(name: "reorder_point")
  final int? reOrderPoint;
  @override
  @JsonKey(name: "reorder_quantity")
  final int? reorderQuantity;
  @override
  @JsonKey(name: "whole_sale_stock")
  final int? wholeSaleStock;
  @override
  @JsonKey(name: "min_sales_order_limit")
  final int? minSalesOrderLimit;
  @override
  @JsonKey(name: "max_sales_order_limit")
  final int? maxSalesOrderLimit;
  @override
  @JsonKey(name: "min_purchase_order_limit")
  final int? minPurchaseOrderLimit;
  @override
  @JsonKey(name: "max_purchase_order_limit")
  final int? maxPurchaseOrderLimit;
  @override
  @JsonKey(name: "purchase_block", defaultValue: false)
  final bool? purchaseBlock;
  @override
  @JsonKey(name: "sales_block", defaultValue: false)
  final bool? salesBolock;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  final bool? stockWarning;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "item_catalog", defaultValue: false)
  final bool? itemCatelog;
  @override
  @JsonKey(name: "item_image", defaultValue: false)
  final bool? itemImage;
  @override
  @JsonKey(name: "ratio_to_eccommerce")
  final String? ratioToEcommerce;
  @override
  @JsonKey(name: "min_max_ratio")
  final String? minMaxRatio;
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
  @JsonKey(name: "base_price")
  final double? basePrize;
  @override
  @JsonKey(name: "about_the_products")
  final Storage? aboutProducts;
  @override
  @JsonKey(name: "product_details")
  final ProductFeatures? productDetails;
  @override
  @JsonKey(name: "product_features")
  final ProductFeatures? productFeatures;
  @override
  @JsonKey(name: "Additional_info")
  final ProductFeatures? additionalInfo;
  @override
  @JsonKey(name: "Nutriants_facts")
  final ProductFeatures? nutriantsFacts;
  @override
  @JsonKey(name: "usage_direction")
  final Storage? usageDirection;
  @override
  @JsonKey(name: "important_info")
  final ProductFeatures? importantInfo;
  @override
  @JsonKey(name: "product_behaviour")
  final List<productBehaviour>? productBehavior;

  @override
  String toString() {
    return 'VariantPost(id: $id, code: $code, vat: $vat, description: $description, name: $name, image1: $image1, image2: $image2, image3: $image3, image4: $image4, image5: $image5, catalog1: $catalog1, catalog2: $catalog2, catalog3: $catalog3, catalog4: $catalog4, catalog5: $catalog5, catalog6: $catalog6, catalog7: $catalog7, catalog8: $catalog8, length: $length, width: $width, height: $height, Ingrediants: $Ingrediants, storage: $storage, inventoryId: $inventoryId, inventoryName: $inventoryName, uomCode: $uomCode, varAlternativeRfid: $varAlternativeRfid, alternativeBarcode: $alternativeBarcode, alternativeQrCodeBarcode: $alternativeQrCodeBarcode, vendorDetails: $vendorDetails, vedioUrl: $vedioUrl, searchName: $searchName, posName: $posName, displayName: $displayName, producedCountry: $producedCountry, arabicDescription: $arabicDescription, additionalDescription: $additionalDescription, unitCost: $unitCost, actualCost: $actualCost, landingCost: $landingCost, grossWeight: $grossWeight, netWeight: $netWeight, avgGp: $avgGp, maxGp: $maxGp, minGap: $minGap, targetedGp: $targetedGp, excessTax: $excessTax, retailSellingPricePercentage: $retailSellingPricePercentage, wholeSellingPricePercentage: $wholeSellingPricePercentage, onlineSellingPercenage: $onlineSellingPercenage, safetyStock: $safetyStock, salesUom: $salesUom, seblingId: $seblingId, purchaseUom: $purchaseUom, reOrderPoint: $reOrderPoint, reorderQuantity: $reorderQuantity, wholeSaleStock: $wholeSaleStock, minSalesOrderLimit: $minSalesOrderLimit, maxSalesOrderLimit: $maxSalesOrderLimit, minPurchaseOrderLimit: $minPurchaseOrderLimit, maxPurchaseOrderLimit: $maxPurchaseOrderLimit, purchaseBlock: $purchaseBlock, salesBolock: $salesBolock, stockWarning: $stockWarning, isActive: $isActive, itemCatelog: $itemCatelog, itemImage: $itemImage, ratioToEcommerce: $ratioToEcommerce, minMaxRatio: $minMaxRatio, returnType: $returnType, variantStatus: $variantStatus, returnTime: $returnTime, basePrize: $basePrize, aboutProducts: $aboutProducts, productDetails: $productDetails, productFeatures: $productFeatures, additionalInfo: $additionalInfo, nutriantsFacts: $nutriantsFacts, usageDirection: $usageDirection, importantInfo: $importantInfo, productBehavior: $productBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.vat, vat) ||
                const DeepCollectionEquality().equals(other.vat, vat)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image1, image1) ||
                const DeepCollectionEquality().equals(other.image1, image1)) &&
            (identical(other.image2, image2) ||
                const DeepCollectionEquality().equals(other.image2, image2)) &&
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
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.Ingrediants, Ingrediants) ||
                const DeepCollectionEquality()
                    .equals(other.Ingrediants, Ingrediants)) &&
            (identical(other.storage, storage) ||
                const DeepCollectionEquality()
                    .equals(other.storage, storage)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.inventoryName, inventoryName) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryName, inventoryName)) &&
            (identical(other.uomCode, uomCode) ||
                const DeepCollectionEquality()
                    .equals(other.uomCode, uomCode)) &&
            (identical(other.varAlternativeRfid, varAlternativeRfid) ||
                const DeepCollectionEquality()
                    .equals(other.varAlternativeRfid, varAlternativeRfid)) &&
            (identical(other.alternativeBarcode, alternativeBarcode) ||
                const DeepCollectionEquality().equals(other.alternativeBarcode, alternativeBarcode)) &&
            (identical(other.alternativeQrCodeBarcode, alternativeQrCodeBarcode) || const DeepCollectionEquality().equals(other.alternativeQrCodeBarcode, alternativeQrCodeBarcode)) &&
            (identical(other.vendorDetails, vendorDetails) || const DeepCollectionEquality().equals(other.vendorDetails, vendorDetails)) &&
            (identical(other.vedioUrl, vedioUrl) || const DeepCollectionEquality().equals(other.vedioUrl, vedioUrl)) &&
            (identical(other.searchName, searchName) || const DeepCollectionEquality().equals(other.searchName, searchName)) &&
            (identical(other.posName, posName) || const DeepCollectionEquality().equals(other.posName, posName)) &&
            (identical(other.displayName, displayName) || const DeepCollectionEquality().equals(other.displayName, displayName)) &&
            (identical(other.producedCountry, producedCountry) || const DeepCollectionEquality().equals(other.producedCountry, producedCountry)) &&
            (identical(other.arabicDescription, arabicDescription) || const DeepCollectionEquality().equals(other.arabicDescription, arabicDescription)) &&
            (identical(other.additionalDescription, additionalDescription) || const DeepCollectionEquality().equals(other.additionalDescription, additionalDescription)) &&
            (identical(other.unitCost, unitCost) || const DeepCollectionEquality().equals(other.unitCost, unitCost)) &&
            (identical(other.actualCost, actualCost) || const DeepCollectionEquality().equals(other.actualCost, actualCost)) &&
            (identical(other.landingCost, landingCost) || const DeepCollectionEquality().equals(other.landingCost, landingCost)) &&
            (identical(other.grossWeight, grossWeight) || const DeepCollectionEquality().equals(other.grossWeight, grossWeight)) &&
            (identical(other.netWeight, netWeight) || const DeepCollectionEquality().equals(other.netWeight, netWeight)) &&
            (identical(other.avgGp, avgGp) || const DeepCollectionEquality().equals(other.avgGp, avgGp)) &&
            (identical(other.maxGp, maxGp) || const DeepCollectionEquality().equals(other.maxGp, maxGp)) &&
            (identical(other.minGap, minGap) || const DeepCollectionEquality().equals(other.minGap, minGap)) &&
            (identical(other.targetedGp, targetedGp) || const DeepCollectionEquality().equals(other.targetedGp, targetedGp)) &&
            (identical(other.excessTax, excessTax) || const DeepCollectionEquality().equals(other.excessTax, excessTax)) &&
            (identical(other.retailSellingPricePercentage, retailSellingPricePercentage) || const DeepCollectionEquality().equals(other.retailSellingPricePercentage, retailSellingPricePercentage)) &&
            (identical(other.wholeSellingPricePercentage, wholeSellingPricePercentage) || const DeepCollectionEquality().equals(other.wholeSellingPricePercentage, wholeSellingPricePercentage)) &&
            (identical(other.onlineSellingPercenage, onlineSellingPercenage) || const DeepCollectionEquality().equals(other.onlineSellingPercenage, onlineSellingPercenage)) &&
            (identical(other.safetyStock, safetyStock) || const DeepCollectionEquality().equals(other.safetyStock, safetyStock)) &&
            (identical(other.salesUom, salesUom) || const DeepCollectionEquality().equals(other.salesUom, salesUom)) &&
            (identical(other.seblingId, seblingId) || const DeepCollectionEquality().equals(other.seblingId, seblingId)) &&
            (identical(other.purchaseUom, purchaseUom) || const DeepCollectionEquality().equals(other.purchaseUom, purchaseUom)) &&
            (identical(other.reOrderPoint, reOrderPoint) || const DeepCollectionEquality().equals(other.reOrderPoint, reOrderPoint)) &&
            (identical(other.reorderQuantity, reorderQuantity) || const DeepCollectionEquality().equals(other.reorderQuantity, reorderQuantity)) &&
            (identical(other.wholeSaleStock, wholeSaleStock) || const DeepCollectionEquality().equals(other.wholeSaleStock, wholeSaleStock)) &&
            (identical(other.minSalesOrderLimit, minSalesOrderLimit) || const DeepCollectionEquality().equals(other.minSalesOrderLimit, minSalesOrderLimit)) &&
            (identical(other.maxSalesOrderLimit, maxSalesOrderLimit) || const DeepCollectionEquality().equals(other.maxSalesOrderLimit, maxSalesOrderLimit)) &&
            (identical(other.minPurchaseOrderLimit, minPurchaseOrderLimit) || const DeepCollectionEquality().equals(other.minPurchaseOrderLimit, minPurchaseOrderLimit)) &&
            (identical(other.maxPurchaseOrderLimit, maxPurchaseOrderLimit) || const DeepCollectionEquality().equals(other.maxPurchaseOrderLimit, maxPurchaseOrderLimit)) &&
            (identical(other.purchaseBlock, purchaseBlock) || const DeepCollectionEquality().equals(other.purchaseBlock, purchaseBlock)) &&
            (identical(other.salesBolock, salesBolock) || const DeepCollectionEquality().equals(other.salesBolock, salesBolock)) &&
            (identical(other.stockWarning, stockWarning) || const DeepCollectionEquality().equals(other.stockWarning, stockWarning)) &&
            (identical(other.isActive, isActive) || const DeepCollectionEquality().equals(other.isActive, isActive)) &&
            (identical(other.itemCatelog, itemCatelog) || const DeepCollectionEquality().equals(other.itemCatelog, itemCatelog)) &&
            (identical(other.itemImage, itemImage) || const DeepCollectionEquality().equals(other.itemImage, itemImage)) &&
            (identical(other.ratioToEcommerce, ratioToEcommerce) || const DeepCollectionEquality().equals(other.ratioToEcommerce, ratioToEcommerce)) &&
            (identical(other.minMaxRatio, minMaxRatio) || const DeepCollectionEquality().equals(other.minMaxRatio, minMaxRatio)) &&
            (identical(other.returnType, returnType) || const DeepCollectionEquality().equals(other.returnType, returnType)) &&
            (identical(other.variantStatus, variantStatus) || const DeepCollectionEquality().equals(other.variantStatus, variantStatus)) &&
            (identical(other.returnTime, returnTime) || const DeepCollectionEquality().equals(other.returnTime, returnTime)) &&
            (identical(other.basePrize, basePrize) || const DeepCollectionEquality().equals(other.basePrize, basePrize)) &&
            (identical(other.aboutProducts, aboutProducts) || const DeepCollectionEquality().equals(other.aboutProducts, aboutProducts)) &&
            (identical(other.productDetails, productDetails) || const DeepCollectionEquality().equals(other.productDetails, productDetails)) &&
            (identical(other.productFeatures, productFeatures) || const DeepCollectionEquality().equals(other.productFeatures, productFeatures)) &&
            (identical(other.additionalInfo, additionalInfo) || const DeepCollectionEquality().equals(other.additionalInfo, additionalInfo)) &&
            (identical(other.nutriantsFacts, nutriantsFacts) || const DeepCollectionEquality().equals(other.nutriantsFacts, nutriantsFacts)) &&
            (identical(other.usageDirection, usageDirection) || const DeepCollectionEquality().equals(other.usageDirection, usageDirection)) &&
            (identical(other.importantInfo, importantInfo) || const DeepCollectionEquality().equals(other.importantInfo, importantInfo)) &&
            (identical(other.productBehavior, productBehavior) || const DeepCollectionEquality().equals(other.productBehavior, productBehavior)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(vat) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image1) ^
      const DeepCollectionEquality().hash(image2) ^
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
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(Ingrediants) ^
      const DeepCollectionEquality().hash(storage) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(inventoryName) ^
      const DeepCollectionEquality().hash(uomCode) ^
      const DeepCollectionEquality().hash(varAlternativeRfid) ^
      const DeepCollectionEquality().hash(alternativeBarcode) ^
      const DeepCollectionEquality().hash(alternativeQrCodeBarcode) ^
      const DeepCollectionEquality().hash(vendorDetails) ^
      const DeepCollectionEquality().hash(vedioUrl) ^
      const DeepCollectionEquality().hash(searchName) ^
      const DeepCollectionEquality().hash(posName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(producedCountry) ^
      const DeepCollectionEquality().hash(arabicDescription) ^
      const DeepCollectionEquality().hash(additionalDescription) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(landingCost) ^
      const DeepCollectionEquality().hash(grossWeight) ^
      const DeepCollectionEquality().hash(netWeight) ^
      const DeepCollectionEquality().hash(avgGp) ^
      const DeepCollectionEquality().hash(maxGp) ^
      const DeepCollectionEquality().hash(minGap) ^
      const DeepCollectionEquality().hash(targetedGp) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(retailSellingPricePercentage) ^
      const DeepCollectionEquality().hash(wholeSellingPricePercentage) ^
      const DeepCollectionEquality().hash(onlineSellingPercenage) ^
      const DeepCollectionEquality().hash(safetyStock) ^
      const DeepCollectionEquality().hash(salesUom) ^
      const DeepCollectionEquality().hash(seblingId) ^
      const DeepCollectionEquality().hash(purchaseUom) ^
      const DeepCollectionEquality().hash(reOrderPoint) ^
      const DeepCollectionEquality().hash(reorderQuantity) ^
      const DeepCollectionEquality().hash(wholeSaleStock) ^
      const DeepCollectionEquality().hash(minSalesOrderLimit) ^
      const DeepCollectionEquality().hash(maxSalesOrderLimit) ^
      const DeepCollectionEquality().hash(minPurchaseOrderLimit) ^
      const DeepCollectionEquality().hash(maxPurchaseOrderLimit) ^
      const DeepCollectionEquality().hash(purchaseBlock) ^
      const DeepCollectionEquality().hash(salesBolock) ^
      const DeepCollectionEquality().hash(stockWarning) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(itemCatelog) ^
      const DeepCollectionEquality().hash(itemImage) ^
      const DeepCollectionEquality().hash(ratioToEcommerce) ^
      const DeepCollectionEquality().hash(minMaxRatio) ^
      const DeepCollectionEquality().hash(returnType) ^
      const DeepCollectionEquality().hash(variantStatus) ^
      const DeepCollectionEquality().hash(returnTime) ^
      const DeepCollectionEquality().hash(basePrize) ^
      const DeepCollectionEquality().hash(aboutProducts) ^
      const DeepCollectionEquality().hash(productDetails) ^
      const DeepCollectionEquality().hash(productFeatures) ^
      const DeepCollectionEquality().hash(additionalInfo) ^
      const DeepCollectionEquality().hash(nutriantsFacts) ^
      const DeepCollectionEquality().hash(usageDirection) ^
      const DeepCollectionEquality().hash(importantInfo) ^
      const DeepCollectionEquality().hash(productBehavior);

  @JsonKey(ignore: true)
  @override
  _$VariantPostCopyWith<_VariantPost> get copyWith =>
      __$VariantPostCopyWithImpl<_VariantPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantPostToJson(this);
  }
}

abstract class _VariantPost implements VariantPost {
  const factory _VariantPost(
      {int? id,
      String? code,
      double? vat,
      String? description,
      String? name,
      String? image1,
      int? image2,
      int? image3,
      int? image4,
      int? image5,
      int? catalog1,
      int? catalog2,
      int? catalog3,
      int? catalog4,
      int? catalog5,
      int? catalog6,
      int? catalog7,
      int? catalog8,
      int? length,
      int? width,
      int? height,
      Storage? Ingrediants,
      Storage? storage,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "inventory_name")
          String? inventoryName,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "var_alternative_rfid")
          String? varAlternativeRfid,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "vedio_url")
          String? vedioUrl,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "display_name")
          String? displayName,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "gross_weight")
          double? grossWeight,
      @JsonKey(name: "net_weight")
          double? netWeight,
      @JsonKey(name: "average_gp")
          double? avgGp,
      @JsonKey(name: "maximum_gp")
          double? maxGp,
      @JsonKey(name: "minimum_gp")
          double? minGap,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "retail_selling_price_percentage")
          double? retailSellingPricePercentage,
      @JsonKey(name: "wholesale_selling_price_percentage")
          double? wholeSellingPricePercentage,
      @JsonKey(name: "online_selling_price_percentage")
          double? onlineSellingPercenage,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "sales_uom")
          int? salesUom,
      @JsonKey(name: "sebling_id")
          int? seblingId,
      @JsonKey(name: "purchase_uom")
          int? purchaseUom,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reorderQuantity,
      @JsonKey(name: "whole_sale_stock")
          int? wholeSaleStock,
      @JsonKey(name: "min_sales_order_limit")
          int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSalesOrderLimit,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBolock,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatelog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "ratio_to_eccommerce")
          String? ratioToEcommerce,
      @JsonKey(name: "min_max_ratio")
          String? minMaxRatio,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "variant_status")
          String? variantStatus,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "base_price")
          double? basePrize,
      @JsonKey(name: "about_the_products")
          Storage? aboutProducts,
      @JsonKey(name: "product_details")
          ProductFeatures? productDetails,
      @JsonKey(name: "product_features")
          ProductFeatures? productFeatures,
      @JsonKey(name: "Additional_info")
          ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          ProductFeatures? nutriantsFacts,
      @JsonKey(name: "usage_direction")
          Storage? usageDirection,
      @JsonKey(name: "important_info")
          ProductFeatures? importantInfo,
      @JsonKey(name: "product_behaviour")
          List<productBehaviour>? productBehavior}) = _$_VariantPost;

  factory _VariantPost.fromJson(Map<String, dynamic> json) =
      _$_VariantPost.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  double? get vat => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get image1 => throw _privateConstructorUsedError;
  @override
  int? get image2 => throw _privateConstructorUsedError;
  @override
  int? get image3 => throw _privateConstructorUsedError;
  @override
  int? get image4 => throw _privateConstructorUsedError;
  @override
  int? get image5 => throw _privateConstructorUsedError;
  @override
  int? get catalog1 => throw _privateConstructorUsedError;
  @override
  int? get catalog2 => throw _privateConstructorUsedError;
  @override
  int? get catalog3 => throw _privateConstructorUsedError;
  @override
  int? get catalog4 => throw _privateConstructorUsedError;
  @override
  int? get catalog5 => throw _privateConstructorUsedError;
  @override
  int? get catalog6 => throw _privateConstructorUsedError;
  @override
  int? get catalog7 => throw _privateConstructorUsedError;
  @override
  int? get catalog8 => throw _privateConstructorUsedError;
  @override
  int? get length => throw _privateConstructorUsedError;
  @override
  int? get width => throw _privateConstructorUsedError;
  @override
  int? get height => throw _privateConstructorUsedError;
  @override
  Storage? get Ingrediants => throw _privateConstructorUsedError;
  @override
  Storage? get storage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_name")
  String? get inventoryName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "var_alternative_rfid")
  String? get varAlternativeRfid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "alternative_barcode")
  List<AlternativeBarcode>? get alternativeBarcode =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "alternative_qrcode")
  List<AlternativeBarcode>? get alternativeQrCodeBarcode =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_details")
  List<VendorDetails>? get vendorDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vedio_url")
  String? get vedioUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "search_name")
  String? get searchName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pos_name")
  String? get posName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "produced_country")
  String? get producedCountry => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "arabic_description")
  String? get arabicDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "additional_description")
  String? get additionalDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "landing_cost")
  double? get landingCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "gross_weight")
  double? get grossWeight => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "net_weight")
  double? get netWeight => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "average_gp")
  double? get avgGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "maximum_gp")
  double? get maxGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "minimum_gp")
  double? get minGap => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "targeted_gp")
  double? get targetedGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
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
  @JsonKey(name: "safty_stock")
  int? get safetyStock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom")
  int? get salesUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sebling_id")
  int? get seblingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom")
  int? get purchaseUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "reorder_quantity")
  int? get reorderQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "whole_sale_stock")
  int? get wholeSaleStock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "min_purchase_order_limit")
  int? get minPurchaseOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "max_purchase_order_limit")
  int? get maxPurchaseOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_block", defaultValue: false)
  bool? get purchaseBlock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_block", defaultValue: false)
  bool? get salesBolock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_catalog", defaultValue: false)
  bool? get itemCatelog => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_image", defaultValue: false)
  bool? get itemImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "ratio_to_eccommerce")
  String? get ratioToEcommerce => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "min_max_ratio")
  String? get minMaxRatio => throw _privateConstructorUsedError;
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
  @JsonKey(name: "base_price")
  double? get basePrize => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "about_the_products")
  Storage? get aboutProducts => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_details")
  ProductFeatures? get productDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_features")
  ProductFeatures? get productFeatures => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Additional_info")
  ProductFeatures? get additionalInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Nutriants_facts")
  ProductFeatures? get nutriantsFacts => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "usage_direction")
  Storage? get usageDirection => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "important_info")
  ProductFeatures? get importantInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_behaviour")
  List<productBehaviour>? get productBehavior =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantPostCopyWith<_VariantPost> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkedItemPostModel _$LinkedItemPostModelFromJson(Map<String, dynamic> json) {
  return _LinkedItemPostModel.fromJson(json);
}

/// @nodoc
class _$LinkedItemPostModelTearOff {
  const _$LinkedItemPostModelTearOff();

  _LinkedItemPostModel call(
      {String? title,
      String? description,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "linked_item_id")
          List<LinkedItemListModel>? linkedItemListModel,
      @JsonKey(name: "variant_id")
          int? variantId}) {
    return _LinkedItemPostModel(
      title: title,
      description: description,
      inventoryId: inventoryId,
      isActive: isActive,
      linkedItemListModel: linkedItemListModel,
      variantId: variantId,
    );
  }

  LinkedItemPostModel fromJson(Map<String, Object> json) {
    return LinkedItemPostModel.fromJson(json);
  }
}

/// @nodoc
const $LinkedItemPostModel = _$LinkedItemPostModelTearOff();

/// @nodoc
mixin _$LinkedItemPostModel {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "linked_item_id")
  List<LinkedItemListModel>? get linkedItemListModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkedItemPostModelCopyWith<LinkedItemPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedItemPostModelCopyWith<$Res> {
  factory $LinkedItemPostModelCopyWith(
          LinkedItemPostModel value, $Res Function(LinkedItemPostModel) then) =
      _$LinkedItemPostModelCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? description,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "linked_item_id")
          List<LinkedItemListModel>? linkedItemListModel,
      @JsonKey(name: "variant_id")
          int? variantId});
}

/// @nodoc
class _$LinkedItemPostModelCopyWithImpl<$Res>
    implements $LinkedItemPostModelCopyWith<$Res> {
  _$LinkedItemPostModelCopyWithImpl(this._value, this._then);

  final LinkedItemPostModel _value;
  // ignore: unused_field
  final $Res Function(LinkedItemPostModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? inventoryId = freezed,
    Object? isActive = freezed,
    Object? linkedItemListModel = freezed,
    Object? variantId = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      linkedItemListModel: linkedItemListModel == freezed
          ? _value.linkedItemListModel
          : linkedItemListModel // ignore: cast_nullable_to_non_nullable
              as List<LinkedItemListModel>?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$LinkedItemPostModelCopyWith<$Res>
    implements $LinkedItemPostModelCopyWith<$Res> {
  factory _$LinkedItemPostModelCopyWith(_LinkedItemPostModel value,
          $Res Function(_LinkedItemPostModel) then) =
      __$LinkedItemPostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? description,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "linked_item_id")
          List<LinkedItemListModel>? linkedItemListModel,
      @JsonKey(name: "variant_id")
          int? variantId});
}

/// @nodoc
class __$LinkedItemPostModelCopyWithImpl<$Res>
    extends _$LinkedItemPostModelCopyWithImpl<$Res>
    implements _$LinkedItemPostModelCopyWith<$Res> {
  __$LinkedItemPostModelCopyWithImpl(
      _LinkedItemPostModel _value, $Res Function(_LinkedItemPostModel) _then)
      : super(_value, (v) => _then(v as _LinkedItemPostModel));

  @override
  _LinkedItemPostModel get _value => super._value as _LinkedItemPostModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? inventoryId = freezed,
    Object? isActive = freezed,
    Object? linkedItemListModel = freezed,
    Object? variantId = freezed,
  }) {
    return _then(_LinkedItemPostModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      linkedItemListModel: linkedItemListModel == freezed
          ? _value.linkedItemListModel
          : linkedItemListModel // ignore: cast_nullable_to_non_nullable
              as List<LinkedItemListModel>?,
      variantId: variantId == freezed
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkedItemPostModel implements _LinkedItemPostModel {
  const _$_LinkedItemPostModel(
      {this.title,
      this.description,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "linked_item_id") this.linkedItemListModel,
      @JsonKey(name: "variant_id") this.variantId});

  factory _$_LinkedItemPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_LinkedItemPostModelFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "linked_item_id")
  final List<LinkedItemListModel>? linkedItemListModel;
  @override
  @JsonKey(name: "variant_id")
  final int? variantId;

  @override
  String toString() {
    return 'LinkedItemPostModel(title: $title, description: $description, inventoryId: $inventoryId, isActive: $isActive, linkedItemListModel: $linkedItemListModel, variantId: $variantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkedItemPostModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.linkedItemListModel, linkedItemListModel) ||
                const DeepCollectionEquality()
                    .equals(other.linkedItemListModel, linkedItemListModel)) &&
            (identical(other.variantId, variantId) ||
                const DeepCollectionEquality()
                    .equals(other.variantId, variantId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(linkedItemListModel) ^
      const DeepCollectionEquality().hash(variantId);

  @JsonKey(ignore: true)
  @override
  _$LinkedItemPostModelCopyWith<_LinkedItemPostModel> get copyWith =>
      __$LinkedItemPostModelCopyWithImpl<_LinkedItemPostModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkedItemPostModelToJson(this);
  }
}

abstract class _LinkedItemPostModel implements LinkedItemPostModel {
  const factory _LinkedItemPostModel(
      {String? title,
      String? description,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "linked_item_id")
          List<LinkedItemListModel>? linkedItemListModel,
      @JsonKey(name: "variant_id")
          int? variantId}) = _$_LinkedItemPostModel;

  factory _LinkedItemPostModel.fromJson(Map<String, dynamic> json) =
      _$_LinkedItemPostModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "linked_item_id")
  List<LinkedItemListModel>? get linkedItemListModel =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_id")
  int? get variantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkedItemPostModelCopyWith<_LinkedItemPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkedItemListModel _$LinkedItemListModelFromJson(Map<String, dynamic> json) {
  return _LinkedItemListModel.fromJson(json);
}

/// @nodoc
class _$LinkedItemListModelTearOff {
  const _$LinkedItemListModelTearOff();

  _LinkedItemListModel call({int? id, String? code, String? name}) {
    return _LinkedItemListModel(
      id: id,
      code: code,
      name: name,
    );
  }

  LinkedItemListModel fromJson(Map<String, Object> json) {
    return LinkedItemListModel.fromJson(json);
  }
}

/// @nodoc
const $LinkedItemListModel = _$LinkedItemListModelTearOff();

/// @nodoc
mixin _$LinkedItemListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkedItemListModelCopyWith<LinkedItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedItemListModelCopyWith<$Res> {
  factory $LinkedItemListModelCopyWith(
          LinkedItemListModel value, $Res Function(LinkedItemListModel) then) =
      _$LinkedItemListModelCopyWithImpl<$Res>;
  $Res call({int? id, String? code, String? name});
}

/// @nodoc
class _$LinkedItemListModelCopyWithImpl<$Res>
    implements $LinkedItemListModelCopyWith<$Res> {
  _$LinkedItemListModelCopyWithImpl(this._value, this._then);

  final LinkedItemListModel _value;
  // ignore: unused_field
  final $Res Function(LinkedItemListModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LinkedItemListModelCopyWith<$Res>
    implements $LinkedItemListModelCopyWith<$Res> {
  factory _$LinkedItemListModelCopyWith(_LinkedItemListModel value,
          $Res Function(_LinkedItemListModel) then) =
      __$LinkedItemListModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? code, String? name});
}

/// @nodoc
class __$LinkedItemListModelCopyWithImpl<$Res>
    extends _$LinkedItemListModelCopyWithImpl<$Res>
    implements _$LinkedItemListModelCopyWith<$Res> {
  __$LinkedItemListModelCopyWithImpl(
      _LinkedItemListModel _value, $Res Function(_LinkedItemListModel) _then)
      : super(_value, (v) => _then(v as _LinkedItemListModel));

  @override
  _LinkedItemListModel get _value => super._value as _LinkedItemListModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_LinkedItemListModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkedItemListModel implements _LinkedItemListModel {
  const _$_LinkedItemListModel({this.id, this.code, this.name});

  factory _$_LinkedItemListModel.fromJson(Map<String, dynamic> json) =>
      _$$_LinkedItemListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? name;

  @override
  String toString() {
    return 'LinkedItemListModel(id: $id, code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkedItemListModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$LinkedItemListModelCopyWith<_LinkedItemListModel> get copyWith =>
      __$LinkedItemListModelCopyWithImpl<_LinkedItemListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkedItemListModelToJson(this);
  }
}

abstract class _LinkedItemListModel implements LinkedItemListModel {
  const factory _LinkedItemListModel({int? id, String? code, String? name}) =
      _$_LinkedItemListModel;

  factory _LinkedItemListModel.fromJson(Map<String, dynamic> json) =
      _$_LinkedItemListModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkedItemListModelCopyWith<_LinkedItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkedItemListReadModel _$LinkedItemListReadModelFromJson(
    Map<String, dynamic> json) {
  return _LinkedItemListReadModel.fromJson(json);
}

/// @nodoc
class _$LinkedItemListReadModelTearOff {
  const _$LinkedItemListReadModelTearOff();

  _LinkedItemListReadModel call(
      {int? id,
      String? code,
      @JsonKey(name: "linked_item_id")
          List<LinkedItemListIdModel>? linkedItemListIdModel,
      @JsonKey(name: "linkeditem_meta")
          LinkedItemMetaModel? linkedItemMetaModel,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive}) {
    return _LinkedItemListReadModel(
      id: id,
      code: code,
      linkedItemListIdModel: linkedItemListIdModel,
      linkedItemMetaModel: linkedItemMetaModel,
      isActive: isActive,
    );
  }

  LinkedItemListReadModel fromJson(Map<String, Object> json) {
    return LinkedItemListReadModel.fromJson(json);
  }
}

/// @nodoc
const $LinkedItemListReadModel = _$LinkedItemListReadModelTearOff();

/// @nodoc
mixin _$LinkedItemListReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "linked_item_id")
  List<LinkedItemListIdModel>? get linkedItemListIdModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "linkeditem_meta")
  LinkedItemMetaModel? get linkedItemMetaModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkedItemListReadModelCopyWith<LinkedItemListReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedItemListReadModelCopyWith<$Res> {
  factory $LinkedItemListReadModelCopyWith(LinkedItemListReadModel value,
          $Res Function(LinkedItemListReadModel) then) =
      _$LinkedItemListReadModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "linked_item_id")
          List<LinkedItemListIdModel>? linkedItemListIdModel,
      @JsonKey(name: "linkeditem_meta")
          LinkedItemMetaModel? linkedItemMetaModel,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive});

  $LinkedItemMetaModelCopyWith<$Res>? get linkedItemMetaModel;
}

/// @nodoc
class _$LinkedItemListReadModelCopyWithImpl<$Res>
    implements $LinkedItemListReadModelCopyWith<$Res> {
  _$LinkedItemListReadModelCopyWithImpl(this._value, this._then);

  final LinkedItemListReadModel _value;
  // ignore: unused_field
  final $Res Function(LinkedItemListReadModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? linkedItemListIdModel = freezed,
    Object? linkedItemMetaModel = freezed,
    Object? isActive = freezed,
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
      linkedItemListIdModel: linkedItemListIdModel == freezed
          ? _value.linkedItemListIdModel
          : linkedItemListIdModel // ignore: cast_nullable_to_non_nullable
              as List<LinkedItemListIdModel>?,
      linkedItemMetaModel: linkedItemMetaModel == freezed
          ? _value.linkedItemMetaModel
          : linkedItemMetaModel // ignore: cast_nullable_to_non_nullable
              as LinkedItemMetaModel?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $LinkedItemMetaModelCopyWith<$Res>? get linkedItemMetaModel {
    if (_value.linkedItemMetaModel == null) {
      return null;
    }

    return $LinkedItemMetaModelCopyWith<$Res>(_value.linkedItemMetaModel!,
        (value) {
      return _then(_value.copyWith(linkedItemMetaModel: value));
    });
  }
}

/// @nodoc
abstract class _$LinkedItemListReadModelCopyWith<$Res>
    implements $LinkedItemListReadModelCopyWith<$Res> {
  factory _$LinkedItemListReadModelCopyWith(_LinkedItemListReadModel value,
          $Res Function(_LinkedItemListReadModel) then) =
      __$LinkedItemListReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: "linked_item_id")
          List<LinkedItemListIdModel>? linkedItemListIdModel,
      @JsonKey(name: "linkeditem_meta")
          LinkedItemMetaModel? linkedItemMetaModel,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive});

  @override
  $LinkedItemMetaModelCopyWith<$Res>? get linkedItemMetaModel;
}

/// @nodoc
class __$LinkedItemListReadModelCopyWithImpl<$Res>
    extends _$LinkedItemListReadModelCopyWithImpl<$Res>
    implements _$LinkedItemListReadModelCopyWith<$Res> {
  __$LinkedItemListReadModelCopyWithImpl(_LinkedItemListReadModel _value,
      $Res Function(_LinkedItemListReadModel) _then)
      : super(_value, (v) => _then(v as _LinkedItemListReadModel));

  @override
  _LinkedItemListReadModel get _value =>
      super._value as _LinkedItemListReadModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? linkedItemListIdModel = freezed,
    Object? linkedItemMetaModel = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_LinkedItemListReadModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedItemListIdModel: linkedItemListIdModel == freezed
          ? _value.linkedItemListIdModel
          : linkedItemListIdModel // ignore: cast_nullable_to_non_nullable
              as List<LinkedItemListIdModel>?,
      linkedItemMetaModel: linkedItemMetaModel == freezed
          ? _value.linkedItemMetaModel
          : linkedItemMetaModel // ignore: cast_nullable_to_non_nullable
              as LinkedItemMetaModel?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkedItemListReadModel implements _LinkedItemListReadModel {
  const _$_LinkedItemListReadModel(
      {this.id,
      this.code,
      @JsonKey(name: "linked_item_id") this.linkedItemListIdModel,
      @JsonKey(name: "linkeditem_meta") this.linkedItemMetaModel,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive});

  factory _$_LinkedItemListReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_LinkedItemListReadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  @JsonKey(name: "linked_item_id")
  final List<LinkedItemListIdModel>? linkedItemListIdModel;
  @override
  @JsonKey(name: "linkeditem_meta")
  final LinkedItemMetaModel? linkedItemMetaModel;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;

  @override
  String toString() {
    return 'LinkedItemListReadModel(id: $id, code: $code, linkedItemListIdModel: $linkedItemListIdModel, linkedItemMetaModel: $linkedItemMetaModel, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkedItemListReadModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.linkedItemListIdModel, linkedItemListIdModel) ||
                const DeepCollectionEquality().equals(
                    other.linkedItemListIdModel, linkedItemListIdModel)) &&
            (identical(other.linkedItemMetaModel, linkedItemMetaModel) ||
                const DeepCollectionEquality()
                    .equals(other.linkedItemMetaModel, linkedItemMetaModel)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(linkedItemListIdModel) ^
      const DeepCollectionEquality().hash(linkedItemMetaModel) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$LinkedItemListReadModelCopyWith<_LinkedItemListReadModel> get copyWith =>
      __$LinkedItemListReadModelCopyWithImpl<_LinkedItemListReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkedItemListReadModelToJson(this);
  }
}

abstract class _LinkedItemListReadModel implements LinkedItemListReadModel {
  const factory _LinkedItemListReadModel(
      {int? id,
      String? code,
      @JsonKey(name: "linked_item_id")
          List<LinkedItemListIdModel>? linkedItemListIdModel,
      @JsonKey(name: "linkeditem_meta")
          LinkedItemMetaModel? linkedItemMetaModel,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive}) = _$_LinkedItemListReadModel;

  factory _LinkedItemListReadModel.fromJson(Map<String, dynamic> json) =
      _$_LinkedItemListReadModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "linked_item_id")
  List<LinkedItemListIdModel>? get linkedItemListIdModel =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "linkeditem_meta")
  LinkedItemMetaModel? get linkedItemMetaModel =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkedItemListReadModelCopyWith<_LinkedItemListReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkedItemListIdModel _$LinkedItemListIdModelFromJson(
    Map<String, dynamic> json) {
  return _LinkedItemListIdModel.fromJson(json);
}

/// @nodoc
class _$LinkedItemListIdModelTearOff {
  const _$LinkedItemListIdModelTearOff();

  _LinkedItemListIdModel call(
      {int? id,
      String? code,
      String? name,
      String? title,
      @JsonKey(name: "group_id") int? groupId}) {
    return _LinkedItemListIdModel(
      id: id,
      code: code,
      name: name,
      title: title,
      groupId: groupId,
    );
  }

  LinkedItemListIdModel fromJson(Map<String, Object> json) {
    return LinkedItemListIdModel.fromJson(json);
  }
}

/// @nodoc
const $LinkedItemListIdModel = _$LinkedItemListIdModelTearOff();

/// @nodoc
mixin _$LinkedItemListIdModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "group_id")
  int? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkedItemListIdModelCopyWith<LinkedItemListIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedItemListIdModelCopyWith<$Res> {
  factory $LinkedItemListIdModelCopyWith(LinkedItemListIdModel value,
          $Res Function(LinkedItemListIdModel) then) =
      _$LinkedItemListIdModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      String? name,
      String? title,
      @JsonKey(name: "group_id") int? groupId});
}

/// @nodoc
class _$LinkedItemListIdModelCopyWithImpl<$Res>
    implements $LinkedItemListIdModelCopyWith<$Res> {
  _$LinkedItemListIdModelCopyWithImpl(this._value, this._then);

  final LinkedItemListIdModel _value;
  // ignore: unused_field
  final $Res Function(LinkedItemListIdModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? groupId = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$LinkedItemListIdModelCopyWith<$Res>
    implements $LinkedItemListIdModelCopyWith<$Res> {
  factory _$LinkedItemListIdModelCopyWith(_LinkedItemListIdModel value,
          $Res Function(_LinkedItemListIdModel) then) =
      __$LinkedItemListIdModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      String? name,
      String? title,
      @JsonKey(name: "group_id") int? groupId});
}

/// @nodoc
class __$LinkedItemListIdModelCopyWithImpl<$Res>
    extends _$LinkedItemListIdModelCopyWithImpl<$Res>
    implements _$LinkedItemListIdModelCopyWith<$Res> {
  __$LinkedItemListIdModelCopyWithImpl(_LinkedItemListIdModel _value,
      $Res Function(_LinkedItemListIdModel) _then)
      : super(_value, (v) => _then(v as _LinkedItemListIdModel));

  @override
  _LinkedItemListIdModel get _value => super._value as _LinkedItemListIdModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_LinkedItemListIdModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkedItemListIdModel implements _LinkedItemListIdModel {
  const _$_LinkedItemListIdModel(
      {this.id,
      this.code,
      this.name,
      this.title,
      @JsonKey(name: "group_id") this.groupId});

  factory _$_LinkedItemListIdModel.fromJson(Map<String, dynamic> json) =>
      _$$_LinkedItemListIdModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final String? title;
  @override
  @JsonKey(name: "group_id")
  final int? groupId;

  @override
  String toString() {
    return 'LinkedItemListIdModel(id: $id, code: $code, name: $name, title: $title, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkedItemListIdModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality().equals(other.groupId, groupId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(groupId);

  @JsonKey(ignore: true)
  @override
  _$LinkedItemListIdModelCopyWith<_LinkedItemListIdModel> get copyWith =>
      __$LinkedItemListIdModelCopyWithImpl<_LinkedItemListIdModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkedItemListIdModelToJson(this);
  }
}

abstract class _LinkedItemListIdModel implements LinkedItemListIdModel {
  const factory _LinkedItemListIdModel(
      {int? id,
      String? code,
      String? name,
      String? title,
      @JsonKey(name: "group_id") int? groupId}) = _$_LinkedItemListIdModel;

  factory _LinkedItemListIdModel.fromJson(Map<String, dynamic> json) =
      _$_LinkedItemListIdModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "group_id")
  int? get groupId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkedItemListIdModelCopyWith<_LinkedItemListIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkedItemMetaModel _$LinkedItemMetaModelFromJson(Map<String, dynamic> json) {
  return _LinkedItemMetaModel.fromJson(json);
}

/// @nodoc
class _$LinkedItemMetaModelTearOff {
  const _$LinkedItemMetaModelTearOff();

  _LinkedItemMetaModel call({String? title, String? description}) {
    return _LinkedItemMetaModel(
      title: title,
      description: description,
    );
  }

  LinkedItemMetaModel fromJson(Map<String, Object> json) {
    return LinkedItemMetaModel.fromJson(json);
  }
}

/// @nodoc
const $LinkedItemMetaModel = _$LinkedItemMetaModelTearOff();

/// @nodoc
mixin _$LinkedItemMetaModel {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkedItemMetaModelCopyWith<LinkedItemMetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedItemMetaModelCopyWith<$Res> {
  factory $LinkedItemMetaModelCopyWith(
          LinkedItemMetaModel value, $Res Function(LinkedItemMetaModel) then) =
      _$LinkedItemMetaModelCopyWithImpl<$Res>;
  $Res call({String? title, String? description});
}

/// @nodoc
class _$LinkedItemMetaModelCopyWithImpl<$Res>
    implements $LinkedItemMetaModelCopyWith<$Res> {
  _$LinkedItemMetaModelCopyWithImpl(this._value, this._then);

  final LinkedItemMetaModel _value;
  // ignore: unused_field
  final $Res Function(LinkedItemMetaModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LinkedItemMetaModelCopyWith<$Res>
    implements $LinkedItemMetaModelCopyWith<$Res> {
  factory _$LinkedItemMetaModelCopyWith(_LinkedItemMetaModel value,
          $Res Function(_LinkedItemMetaModel) then) =
      __$LinkedItemMetaModelCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? description});
}

/// @nodoc
class __$LinkedItemMetaModelCopyWithImpl<$Res>
    extends _$LinkedItemMetaModelCopyWithImpl<$Res>
    implements _$LinkedItemMetaModelCopyWith<$Res> {
  __$LinkedItemMetaModelCopyWithImpl(
      _LinkedItemMetaModel _value, $Res Function(_LinkedItemMetaModel) _then)
      : super(_value, (v) => _then(v as _LinkedItemMetaModel));

  @override
  _LinkedItemMetaModel get _value => super._value as _LinkedItemMetaModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_LinkedItemMetaModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinkedItemMetaModel implements _LinkedItemMetaModel {
  const _$_LinkedItemMetaModel({this.title, this.description});

  factory _$_LinkedItemMetaModel.fromJson(Map<String, dynamic> json) =>
      _$$_LinkedItemMetaModelFromJson(json);

  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'LinkedItemMetaModel(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkedItemMetaModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$LinkedItemMetaModelCopyWith<_LinkedItemMetaModel> get copyWith =>
      __$LinkedItemMetaModelCopyWithImpl<_LinkedItemMetaModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkedItemMetaModelToJson(this);
  }
}

abstract class _LinkedItemMetaModel implements LinkedItemMetaModel {
  const factory _LinkedItemMetaModel({String? title, String? description}) =
      _$_LinkedItemMetaModel;

  factory _LinkedItemMetaModel.fromJson(Map<String, dynamic> json) =
      _$_LinkedItemMetaModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkedItemMetaModelCopyWith<_LinkedItemMetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
