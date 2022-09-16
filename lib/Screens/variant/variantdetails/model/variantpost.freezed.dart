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
      List<Storage>? Ingrediants,
      List<Storage>? storage,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
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
          List<Storage>? aboutProducts,
      @JsonKey(name: "product_details")
          List<ProductFeatures>? productDetails,
      @JsonKey(name: "product_features")
          List<ProductFeatures>? productFeatures,
      @JsonKey(name: "Additional_info")
          List<ProductFeatures>? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          List<ProductFeatures>? nutriantsFacts,
      @JsonKey(name: "usage_direction")
          List<Storage>? usageDirection,
      @JsonKey(name: "important_info")
          List<ProductFeatures>? importantInfo,
      @JsonKey(name: "product_behaviour")
          List<ProductFeatures>? productBehavior}) {
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
      Ingrediants: Ingrediants,
      storage: storage,
      uomCode: uomCode,
      alternativeBarcode: alternativeBarcode,
      alternativeQrCodeBarcode: alternativeQrCodeBarcode,
      inventoryId: inventoryId,
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
  List<Storage>? get Ingrediants => throw _privateConstructorUsedError;
  List<Storage>? get storage => throw _privateConstructorUsedError;
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
  List<Storage>? get aboutProducts => throw _privateConstructorUsedError;
  @JsonKey(name: "product_details")
  List<ProductFeatures>? get productDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "product_features")
  List<ProductFeatures>? get productFeatures =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Additional_info")
  List<ProductFeatures>? get additionalInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Nutriants_facts")
  List<ProductFeatures>? get nutriantsFacts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "usage_direction")
  List<Storage>? get usageDirection => throw _privateConstructorUsedError;
  @JsonKey(name: "important_info")
  List<ProductFeatures>? get importantInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "product_behaviour")
  List<ProductFeatures>? get productBehavior =>
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
      List<Storage>? Ingrediants,
      List<Storage>? storage,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
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
          List<Storage>? aboutProducts,
      @JsonKey(name: "product_details")
          List<ProductFeatures>? productDetails,
      @JsonKey(name: "product_features")
          List<ProductFeatures>? productFeatures,
      @JsonKey(name: "Additional_info")
          List<ProductFeatures>? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          List<ProductFeatures>? nutriantsFacts,
      @JsonKey(name: "usage_direction")
          List<Storage>? usageDirection,
      @JsonKey(name: "important_info")
          List<ProductFeatures>? importantInfo,
      @JsonKey(name: "product_behaviour")
          List<ProductFeatures>? productBehavior});
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
    Object? Ingrediants = freezed,
    Object? storage = freezed,
    Object? uomCode = freezed,
    Object? alternativeBarcode = freezed,
    Object? alternativeQrCodeBarcode = freezed,
    Object? inventoryId = freezed,
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
      Ingrediants: Ingrediants == freezed
          ? _value.Ingrediants
          : Ingrediants // ignore: cast_nullable_to_non_nullable
              as List<Storage>?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as List<Storage>?,
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
              as List<Storage>?,
      productDetails: productDetails == freezed
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      productFeatures: productFeatures == freezed
          ? _value.productFeatures
          : productFeatures // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      nutriantsFacts: nutriantsFacts == freezed
          ? _value.nutriantsFacts
          : nutriantsFacts // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      usageDirection: usageDirection == freezed
          ? _value.usageDirection
          : usageDirection // ignore: cast_nullable_to_non_nullable
              as List<Storage>?,
      importantInfo: importantInfo == freezed
          ? _value.importantInfo
          : importantInfo // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      productBehavior: productBehavior == freezed
          ? _value.productBehavior
          : productBehavior // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
    ));
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
      List<Storage>? Ingrediants,
      List<Storage>? storage,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
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
          List<Storage>? aboutProducts,
      @JsonKey(name: "product_details")
          List<ProductFeatures>? productDetails,
      @JsonKey(name: "product_features")
          List<ProductFeatures>? productFeatures,
      @JsonKey(name: "Additional_info")
          List<ProductFeatures>? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          List<ProductFeatures>? nutriantsFacts,
      @JsonKey(name: "usage_direction")
          List<Storage>? usageDirection,
      @JsonKey(name: "important_info")
          List<ProductFeatures>? importantInfo,
      @JsonKey(name: "product_behaviour")
          List<ProductFeatures>? productBehavior});
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
    Object? Ingrediants = freezed,
    Object? storage = freezed,
    Object? uomCode = freezed,
    Object? alternativeBarcode = freezed,
    Object? alternativeQrCodeBarcode = freezed,
    Object? inventoryId = freezed,
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
      Ingrediants: Ingrediants == freezed
          ? _value.Ingrediants
          : Ingrediants // ignore: cast_nullable_to_non_nullable
              as List<Storage>?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as List<Storage>?,
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
              as List<Storage>?,
      productDetails: productDetails == freezed
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      productFeatures: productFeatures == freezed
          ? _value.productFeatures
          : productFeatures // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      nutriantsFacts: nutriantsFacts == freezed
          ? _value.nutriantsFacts
          : nutriantsFacts // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      usageDirection: usageDirection == freezed
          ? _value.usageDirection
          : usageDirection // ignore: cast_nullable_to_non_nullable
              as List<Storage>?,
      importantInfo: importantInfo == freezed
          ? _value.importantInfo
          : importantInfo // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
      productBehavior: productBehavior == freezed
          ? _value.productBehavior
          : productBehavior // ignore: cast_nullable_to_non_nullable
              as List<ProductFeatures>?,
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
      this.Ingrediants,
      this.storage,
      @JsonKey(name: "uom_code")
          this.uomCode,
      @JsonKey(name: "alternative_barcode")
          this.alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          this.alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          this.inventoryId,
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
  final List<Storage>? Ingrediants;
  @override
  final List<Storage>? storage;
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
  final List<Storage>? aboutProducts;
  @override
  @JsonKey(name: "product_details")
  final List<ProductFeatures>? productDetails;
  @override
  @JsonKey(name: "product_features")
  final List<ProductFeatures>? productFeatures;
  @override
  @JsonKey(name: "Additional_info")
  final List<ProductFeatures>? additionalInfo;
  @override
  @JsonKey(name: "Nutriants_facts")
  final List<ProductFeatures>? nutriantsFacts;
  @override
  @JsonKey(name: "usage_direction")
  final List<Storage>? usageDirection;
  @override
  @JsonKey(name: "important_info")
  final List<ProductFeatures>? importantInfo;
  @override
  @JsonKey(name: "product_behaviour")
  final List<ProductFeatures>? productBehavior;

  @override
  String toString() {
    return 'VariantPost(id: $id, code: $code, vat: $vat, description: $description, name: $name, image1: $image1, image2: $image2, image3: $image3, image4: $image4, image5: $image5, catalog1: $catalog1, catalog2: $catalog2, catalog3: $catalog3, catalog4: $catalog4, catalog5: $catalog5, catalog6: $catalog6, catalog7: $catalog7, catalog8: $catalog8, Ingrediants: $Ingrediants, storage: $storage, uomCode: $uomCode, alternativeBarcode: $alternativeBarcode, alternativeQrCodeBarcode: $alternativeQrCodeBarcode, inventoryId: $inventoryId, vedioUrl: $vedioUrl, searchName: $searchName, posName: $posName, displayName: $displayName, producedCountry: $producedCountry, arabicDescription: $arabicDescription, additionalDescription: $additionalDescription, unitCost: $unitCost, actualCost: $actualCost, landingCost: $landingCost, grossWeight: $grossWeight, netWeight: $netWeight, avgGp: $avgGp, maxGp: $maxGp, minGap: $minGap, targetedGp: $targetedGp, excessTax: $excessTax, retailSellingPricePercentage: $retailSellingPricePercentage, wholeSellingPricePercentage: $wholeSellingPricePercentage, onlineSellingPercenage: $onlineSellingPercenage, safetyStock: $safetyStock, salesUom: $salesUom, purchaseUom: $purchaseUom, reOrderPoint: $reOrderPoint, reorderQuantity: $reorderQuantity, wholeSaleStock: $wholeSaleStock, minSalesOrderLimit: $minSalesOrderLimit, maxSalesOrderLimit: $maxSalesOrderLimit, minPurchaseOrderLimit: $minPurchaseOrderLimit, maxPurchaseOrderLimit: $maxPurchaseOrderLimit, purchaseBlock: $purchaseBlock, salesBolock: $salesBolock, stockWarning: $stockWarning, isActive: $isActive, ratioToEcommerce: $ratioToEcommerce, minMaxRatio: $minMaxRatio, returnType: $returnType, variantStatus: $variantStatus, returnTime: $returnTime, basePrize: $basePrize, aboutProducts: $aboutProducts, productDetails: $productDetails, productFeatures: $productFeatures, additionalInfo: $additionalInfo, nutriantsFacts: $nutriantsFacts, usageDirection: $usageDirection, importantInfo: $importantInfo, productBehavior: $productBehavior)';
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
            (identical(other.Ingrediants, Ingrediants) ||
                const DeepCollectionEquality()
                    .equals(other.Ingrediants, Ingrediants)) &&
            (identical(other.storage, storage) ||
                const DeepCollectionEquality()
                    .equals(other.storage, storage)) &&
            (identical(other.uomCode, uomCode) ||
                const DeepCollectionEquality()
                    .equals(other.uomCode, uomCode)) &&
            (identical(other.alternativeBarcode, alternativeBarcode) ||
                const DeepCollectionEquality()
                    .equals(other.alternativeBarcode, alternativeBarcode)) &&
            (identical(other.alternativeQrCodeBarcode, alternativeQrCodeBarcode) ||
                const DeepCollectionEquality().equals(
                    other.alternativeQrCodeBarcode,
                    alternativeQrCodeBarcode)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.vedioUrl, vedioUrl) ||
                const DeepCollectionEquality()
                    .equals(other.vedioUrl, vedioUrl)) &&
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
      const DeepCollectionEquality().hash(Ingrediants) ^
      const DeepCollectionEquality().hash(storage) ^
      const DeepCollectionEquality().hash(uomCode) ^
      const DeepCollectionEquality().hash(alternativeBarcode) ^
      const DeepCollectionEquality().hash(alternativeQrCodeBarcode) ^
      const DeepCollectionEquality().hash(inventoryId) ^
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
      List<Storage>? Ingrediants,
      List<Storage>? storage,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "alternative_barcode")
          List<AlternativeBarcode>? alternativeBarcode,
      @JsonKey(name: "alternative_qrcode")
          List<AlternativeBarcode>? alternativeQrCodeBarcode,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
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
          List<Storage>? aboutProducts,
      @JsonKey(name: "product_details")
          List<ProductFeatures>? productDetails,
      @JsonKey(name: "product_features")
          List<ProductFeatures>? productFeatures,
      @JsonKey(name: "Additional_info")
          List<ProductFeatures>? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          List<ProductFeatures>? nutriantsFacts,
      @JsonKey(name: "usage_direction")
          List<Storage>? usageDirection,
      @JsonKey(name: "important_info")
          List<ProductFeatures>? importantInfo,
      @JsonKey(name: "product_behaviour")
          List<ProductFeatures>? productBehavior}) = _$_VariantPost;

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
  List<Storage>? get Ingrediants => throw _privateConstructorUsedError;
  @override
  List<Storage>? get storage => throw _privateConstructorUsedError;
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
  List<Storage>? get aboutProducts => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_details")
  List<ProductFeatures>? get productDetails =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_features")
  List<ProductFeatures>? get productFeatures =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Additional_info")
  List<ProductFeatures>? get additionalInfo =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Nutriants_facts")
  List<ProductFeatures>? get nutriantsFacts =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "usage_direction")
  List<Storage>? get usageDirection => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "important_info")
  List<ProductFeatures>? get importantInfo =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_behaviour")
  List<ProductFeatures>? get productBehavior =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantPostCopyWith<_VariantPost> get copyWith =>
      throw _privateConstructorUsedError;
}
