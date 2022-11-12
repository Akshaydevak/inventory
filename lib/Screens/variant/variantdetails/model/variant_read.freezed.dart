// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variant_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantReadModel _$VariantReadModelFromJson(Map<String, dynamic> json) {
  return _VariantReadModel.fromJson(json);
}

/// @nodoc
class _$VariantReadModelTearOff {
  const _$VariantReadModelTearOff();

  _VariantReadModel call(
      {int? id,
      String? code,
      double? vat,
      String? description,
      String? name,
      String? image1,
      String? image2,
      String? image3,
      Barcode? barcode,
      QrCode? qrcode,
      Dimension? dimension,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "variantframework_id")
          int? variantFrameWorkId,
      @JsonKey(name: "uom_id")
          String? uomId,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "uom_group_name")
          String? uomGroupName,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reOrderQuantity,
      @JsonKey(name: "linked_item")
          String? linkedItem,
      @JsonKey(name: "var_alternative_barcode")
          List<AlternativeBarcode>? alterNativeBarcode,
      @JsonKey(name: "var_alternative_qrcode")
          List<AlternativeBarcode>? alterNativeQrCode,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "weight_uom_id")
          int? weightUomId,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSaleOrderLimit,
      @JsonKey(name: "min_sales_order_limit")
          int? minSaleOrderLimit,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "return_type_options")
          List<String>? returType,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "manufacture_id")
          int? manuFacturedId,
      @JsonKey(name: "manufacture_name")
          String? manuFacturedName,
      @JsonKey(name: "avrg_gp")
          double? avgGp,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "max_gp")
          double? maxGp,
      @JsonKey(name: "min_gp")
          double? minGap,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "uom_name_data")
          UomNameData? uomNameData,
      @JsonKey(name: "sales_uom_data")
          SalesUomData? salesUomData,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "purchase_uom_data")
          PurchaseUomData? purchaseUomdata,
      @JsonKey(name: "variant_framework_data")
          VariantFrameWork? variantframeWork,
      @JsonKey(name: "variant_meta")
          VariantMeta? variantMeta,
      @JsonKey(name: "item_data")
          ItemData? itemData,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "sales_uom")
          String? SalesUom,
      @JsonKey(name: "gross_weight")
          String? grossWeight,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "net_weight")
          String? netWeight,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "display_name")
          String? displayname,
      @JsonKey(name: "purchase_uom")
          String? purchaseuom,
      @JsonKey(name: "vedio_url")
          String? vdeioUrl,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBlock,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatalog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "item_cataloge1")
          String? itemCatelog1,
      @JsonKey(name: "item_cataloge2")
          String? itemCatelog2,
      @JsonKey(name: "item_cataloge3")
          String? itemCatelog3,
      @JsonKey(name: "item_cataloge4")
          String? itemCatelog4}) {
    return _VariantReadModel(
      id: id,
      code: code,
      vat: vat,
      description: description,
      name: name,
      image1: image1,
      image2: image2,
      image3: image3,
      barcode: barcode,
      qrcode: qrcode,
      dimension: dimension,
      uomCode: uomCode,
      variantFrameWorkId: variantFrameWorkId,
      uomId: uomId,
      inventoryId: inventoryId,
      uomGroupName: uomGroupName,
      reOrderPoint: reOrderPoint,
      reOrderQuantity: reOrderQuantity,
      linkedItem: linkedItem,
      alterNativeBarcode: alterNativeBarcode,
      alterNativeQrCode: alterNativeQrCode,
      unitCost: unitCost,
      weightUomId: weightUomId,
      maxSaleOrderLimit: maxSaleOrderLimit,
      minSaleOrderLimit: minSaleOrderLimit,
      actualCost: actualCost,
      returType: returType,
      safetyStock: safetyStock,
      minPurchaseOrderLimit: minPurchaseOrderLimit,
      maxPurchaseOrderLimit: maxPurchaseOrderLimit,
      manuFacturedId: manuFacturedId,
      manuFacturedName: manuFacturedName,
      avgGp: avgGp,
      returnType: returnType,
      returnTime: returnTime,
      maxGp: maxGp,
      minGap: minGap,
      targetedGp: targetedGp,
      excessTax: excessTax,
      landingCost: landingCost,
      uomNameData: uomNameData,
      salesUomData: salesUomData,
      vendorDetails: vendorDetails,
      purchaseUomdata: purchaseUomdata,
      variantframeWork: variantframeWork,
      variantMeta: variantMeta,
      itemData: itemData,
      searchName: searchName,
      SalesUom: SalesUom,
      grossWeight: grossWeight,
      producedCountry: producedCountry,
      netWeight: netWeight,
      posName: posName,
      displayname: displayname,
      purchaseuom: purchaseuom,
      vdeioUrl: vdeioUrl,
      arabicDescription: arabicDescription,
      additionalDescription: additionalDescription,
      isActive: isActive,
      salesBlock: salesBlock,
      purchaseBlock: purchaseBlock,
      itemCatalog: itemCatalog,
      itemImage: itemImage,
      stockWarning: stockWarning,
      itemCatelog1: itemCatelog1,
      itemCatelog2: itemCatelog2,
      itemCatelog3: itemCatelog3,
      itemCatelog4: itemCatelog4,
    );
  }

  VariantReadModel fromJson(Map<String, Object> json) {
    return VariantReadModel.fromJson(json);
  }
}

/// @nodoc
const $VariantReadModel = _$VariantReadModelTearOff();

/// @nodoc
mixin _$VariantReadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image1 => throw _privateConstructorUsedError;
  String? get image2 => throw _privateConstructorUsedError;
  String? get image3 => throw _privateConstructorUsedError;
  Barcode? get barcode => throw _privateConstructorUsedError;
  QrCode? get qrcode => throw _privateConstructorUsedError;
  Dimension? get dimension => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @JsonKey(name: "variantframework_id")
  int? get variantFrameWorkId => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_id")
  String? get uomId => throw _privateConstructorUsedError;
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_group_name")
  String? get uomGroupName => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "reorder_quantity")
  int? get reOrderQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "linked_item")
  String? get linkedItem => throw _privateConstructorUsedError;
  @JsonKey(name: "var_alternative_barcode")
  List<AlternativeBarcode>? get alterNativeBarcode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "var_alternative_qrcode")
  List<AlternativeBarcode>? get alterNativeQrCode =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @JsonKey(name: "weight_uom_id")
  int? get weightUomId => throw _privateConstructorUsedError;
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSaleOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "min_sales_order_limit")
  int? get minSaleOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type_options")
  List<String>? get returType => throw _privateConstructorUsedError;
  @JsonKey(name: "safty_stock")
  int? get safetyStock => throw _privateConstructorUsedError;
  @JsonKey(name: "min_purchase_order_limit")
  int? get minPurchaseOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "max_purchase_order_limit")
  int? get maxPurchaseOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "manufacture_id")
  int? get manuFacturedId => throw _privateConstructorUsedError;
  @JsonKey(name: "manufacture_name")
  String? get manuFacturedName => throw _privateConstructorUsedError;
  @JsonKey(name: "avrg_gp")
  double? get avgGp => throw _privateConstructorUsedError;
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @JsonKey(name: "max_gp")
  double? get maxGp => throw _privateConstructorUsedError;
  @JsonKey(name: "min_gp")
  double? get minGap => throw _privateConstructorUsedError;
  @JsonKey(name: "targeted_gp")
  double? get targetedGp => throw _privateConstructorUsedError;
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @JsonKey(name: "landing_cost")
  double? get landingCost => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_name_data")
  UomNameData? get uomNameData => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom_data")
  SalesUomData? get salesUomData => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_details")
  List<VendorDetails>? get vendorDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom_data")
  PurchaseUomData? get purchaseUomdata => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_framework_data")
  VariantFrameWork? get variantframeWork => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_meta")
  VariantMeta? get variantMeta => throw _privateConstructorUsedError;
  @JsonKey(name: "item_data")
  ItemData? get itemData => throw _privateConstructorUsedError;
  @JsonKey(name: "search_name")
  String? get searchName =>
      throw _privateConstructorUsedError; // @JsonKey(name: "manufacture_name") final String? manufacturedName,
  @JsonKey(name: "sales_uom")
  String? get SalesUom => throw _privateConstructorUsedError;
  @JsonKey(name: "gross_weight")
  String? get grossWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "produced_country")
  String? get producedCountry => throw _privateConstructorUsedError;
  @JsonKey(name: "net_weight")
  String? get netWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "pos_name")
  String? get posName => throw _privateConstructorUsedError;
  @JsonKey(name: "display_name")
  String? get displayname => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom")
  String? get purchaseuom => throw _privateConstructorUsedError;
  @JsonKey(name: "vedio_url")
  String? get vdeioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "arabic_description")
  String? get arabicDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_description")
  String? get additionalDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_block", defaultValue: false)
  bool? get salesBlock => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_block", defaultValue: false)
  bool? get purchaseBlock => throw _privateConstructorUsedError;
  @JsonKey(name: "item_catalog", defaultValue: false)
  bool? get itemCatalog => throw _privateConstructorUsedError;
  @JsonKey(name: "item_image", defaultValue: false)
  bool? get itemImage => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @JsonKey(name: "item_cataloge1")
  String? get itemCatelog1 => throw _privateConstructorUsedError;
  @JsonKey(name: "item_cataloge2")
  String? get itemCatelog2 => throw _privateConstructorUsedError;
  @JsonKey(name: "item_cataloge3")
  String? get itemCatelog3 => throw _privateConstructorUsedError;
  @JsonKey(name: "item_cataloge4")
  String? get itemCatelog4 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantReadModelCopyWith<VariantReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantReadModelCopyWith<$Res> {
  factory $VariantReadModelCopyWith(
          VariantReadModel value, $Res Function(VariantReadModel) then) =
      _$VariantReadModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? code,
      double? vat,
      String? description,
      String? name,
      String? image1,
      String? image2,
      String? image3,
      Barcode? barcode,
      QrCode? qrcode,
      Dimension? dimension,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "variantframework_id")
          int? variantFrameWorkId,
      @JsonKey(name: "uom_id")
          String? uomId,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "uom_group_name")
          String? uomGroupName,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reOrderQuantity,
      @JsonKey(name: "linked_item")
          String? linkedItem,
      @JsonKey(name: "var_alternative_barcode")
          List<AlternativeBarcode>? alterNativeBarcode,
      @JsonKey(name: "var_alternative_qrcode")
          List<AlternativeBarcode>? alterNativeQrCode,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "weight_uom_id")
          int? weightUomId,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSaleOrderLimit,
      @JsonKey(name: "min_sales_order_limit")
          int? minSaleOrderLimit,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "return_type_options")
          List<String>? returType,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "manufacture_id")
          int? manuFacturedId,
      @JsonKey(name: "manufacture_name")
          String? manuFacturedName,
      @JsonKey(name: "avrg_gp")
          double? avgGp,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "max_gp")
          double? maxGp,
      @JsonKey(name: "min_gp")
          double? minGap,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "uom_name_data")
          UomNameData? uomNameData,
      @JsonKey(name: "sales_uom_data")
          SalesUomData? salesUomData,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "purchase_uom_data")
          PurchaseUomData? purchaseUomdata,
      @JsonKey(name: "variant_framework_data")
          VariantFrameWork? variantframeWork,
      @JsonKey(name: "variant_meta")
          VariantMeta? variantMeta,
      @JsonKey(name: "item_data")
          ItemData? itemData,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "sales_uom")
          String? SalesUom,
      @JsonKey(name: "gross_weight")
          String? grossWeight,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "net_weight")
          String? netWeight,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "display_name")
          String? displayname,
      @JsonKey(name: "purchase_uom")
          String? purchaseuom,
      @JsonKey(name: "vedio_url")
          String? vdeioUrl,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBlock,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatalog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "item_cataloge1")
          String? itemCatelog1,
      @JsonKey(name: "item_cataloge2")
          String? itemCatelog2,
      @JsonKey(name: "item_cataloge3")
          String? itemCatelog3,
      @JsonKey(name: "item_cataloge4")
          String? itemCatelog4});

  $BarcodeCopyWith<$Res>? get barcode;
  $QrCodeCopyWith<$Res>? get qrcode;
  $DimensionCopyWith<$Res>? get dimension;
  $UomNameDataCopyWith<$Res>? get uomNameData;
  $SalesUomDataCopyWith<$Res>? get salesUomData;
  $PurchaseUomDataCopyWith<$Res>? get purchaseUomdata;
  $VariantFrameWorkCopyWith<$Res>? get variantframeWork;
  $VariantMetaCopyWith<$Res>? get variantMeta;
  $ItemDataCopyWith<$Res>? get itemData;
}

/// @nodoc
class _$VariantReadModelCopyWithImpl<$Res>
    implements $VariantReadModelCopyWith<$Res> {
  _$VariantReadModelCopyWithImpl(this._value, this._then);

  final VariantReadModel _value;
  // ignore: unused_field
  final $Res Function(VariantReadModel) _then;

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
    Object? barcode = freezed,
    Object? qrcode = freezed,
    Object? dimension = freezed,
    Object? uomCode = freezed,
    Object? variantFrameWorkId = freezed,
    Object? uomId = freezed,
    Object? inventoryId = freezed,
    Object? uomGroupName = freezed,
    Object? reOrderPoint = freezed,
    Object? reOrderQuantity = freezed,
    Object? linkedItem = freezed,
    Object? alterNativeBarcode = freezed,
    Object? alterNativeQrCode = freezed,
    Object? unitCost = freezed,
    Object? weightUomId = freezed,
    Object? maxSaleOrderLimit = freezed,
    Object? minSaleOrderLimit = freezed,
    Object? actualCost = freezed,
    Object? returType = freezed,
    Object? safetyStock = freezed,
    Object? minPurchaseOrderLimit = freezed,
    Object? maxPurchaseOrderLimit = freezed,
    Object? manuFacturedId = freezed,
    Object? manuFacturedName = freezed,
    Object? avgGp = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? maxGp = freezed,
    Object? minGap = freezed,
    Object? targetedGp = freezed,
    Object? excessTax = freezed,
    Object? landingCost = freezed,
    Object? uomNameData = freezed,
    Object? salesUomData = freezed,
    Object? vendorDetails = freezed,
    Object? purchaseUomdata = freezed,
    Object? variantframeWork = freezed,
    Object? variantMeta = freezed,
    Object? itemData = freezed,
    Object? searchName = freezed,
    Object? SalesUom = freezed,
    Object? grossWeight = freezed,
    Object? producedCountry = freezed,
    Object? netWeight = freezed,
    Object? posName = freezed,
    Object? displayname = freezed,
    Object? purchaseuom = freezed,
    Object? vdeioUrl = freezed,
    Object? arabicDescription = freezed,
    Object? additionalDescription = freezed,
    Object? isActive = freezed,
    Object? salesBlock = freezed,
    Object? purchaseBlock = freezed,
    Object? itemCatalog = freezed,
    Object? itemImage = freezed,
    Object? stockWarning = freezed,
    Object? itemCatelog1 = freezed,
    Object? itemCatelog2 = freezed,
    Object? itemCatelog3 = freezed,
    Object? itemCatelog4 = freezed,
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
              as String?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      qrcode: qrcode == freezed
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as QrCode?,
      dimension: dimension == freezed
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as Dimension?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkId: variantFrameWorkId == freezed
          ? _value.variantFrameWorkId
          : variantFrameWorkId // ignore: cast_nullable_to_non_nullable
              as int?,
      uomId: uomId == freezed
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      uomGroupName: uomGroupName == freezed
          ? _value.uomGroupName
          : uomGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      reOrderPoint: reOrderPoint == freezed
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderQuantity: reOrderQuantity == freezed
          ? _value.reOrderQuantity
          : reOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      linkedItem: linkedItem == freezed
          ? _value.linkedItem
          : linkedItem // ignore: cast_nullable_to_non_nullable
              as String?,
      alterNativeBarcode: alterNativeBarcode == freezed
          ? _value.alterNativeBarcode
          : alterNativeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      alterNativeQrCode: alterNativeQrCode == freezed
          ? _value.alterNativeQrCode
          : alterNativeQrCode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      weightUomId: weightUomId == freezed
          ? _value.weightUomId
          : weightUomId // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSaleOrderLimit: maxSaleOrderLimit == freezed
          ? _value.maxSaleOrderLimit
          : maxSaleOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      minSaleOrderLimit: minSaleOrderLimit == freezed
          ? _value.minSaleOrderLimit
          : minSaleOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      returType: returType == freezed
          ? _value.returType
          : returType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      safetyStock: safetyStock == freezed
          ? _value.safetyStock
          : safetyStock // ignore: cast_nullable_to_non_nullable
              as int?,
      minPurchaseOrderLimit: minPurchaseOrderLimit == freezed
          ? _value.minPurchaseOrderLimit
          : minPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPurchaseOrderLimit: maxPurchaseOrderLimit == freezed
          ? _value.maxPurchaseOrderLimit
          : maxPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFacturedId: manuFacturedId == freezed
          ? _value.manuFacturedId
          : manuFacturedId // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFacturedName: manuFacturedName == freezed
          ? _value.manuFacturedName
          : manuFacturedName // ignore: cast_nullable_to_non_nullable
              as String?,
      avgGp: avgGp == freezed
          ? _value.avgGp
          : avgGp // ignore: cast_nullable_to_non_nullable
              as double?,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: returnTime == freezed
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
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
      landingCost: landingCost == freezed
          ? _value.landingCost
          : landingCost // ignore: cast_nullable_to_non_nullable
              as double?,
      uomNameData: uomNameData == freezed
          ? _value.uomNameData
          : uomNameData // ignore: cast_nullable_to_non_nullable
              as UomNameData?,
      salesUomData: salesUomData == freezed
          ? _value.salesUomData
          : salesUomData // ignore: cast_nullable_to_non_nullable
              as SalesUomData?,
      vendorDetails: vendorDetails == freezed
          ? _value.vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as List<VendorDetails>?,
      purchaseUomdata: purchaseUomdata == freezed
          ? _value.purchaseUomdata
          : purchaseUomdata // ignore: cast_nullable_to_non_nullable
              as PurchaseUomData?,
      variantframeWork: variantframeWork == freezed
          ? _value.variantframeWork
          : variantframeWork // ignore: cast_nullable_to_non_nullable
              as VariantFrameWork?,
      variantMeta: variantMeta == freezed
          ? _value.variantMeta
          : variantMeta // ignore: cast_nullable_to_non_nullable
              as VariantMeta?,
      itemData: itemData == freezed
          ? _value.itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as ItemData?,
      searchName: searchName == freezed
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      SalesUom: SalesUom == freezed
          ? _value.SalesUom
          : SalesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      grossWeight: grossWeight == freezed
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      producedCountry: producedCountry == freezed
          ? _value.producedCountry
          : producedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      netWeight: netWeight == freezed
          ? _value.netWeight
          : netWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      posName: posName == freezed
          ? _value.posName
          : posName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayname: displayname == freezed
          ? _value.displayname
          : displayname // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseuom: purchaseuom == freezed
          ? _value.purchaseuom
          : purchaseuom // ignore: cast_nullable_to_non_nullable
              as String?,
      vdeioUrl: vdeioUrl == freezed
          ? _value.vdeioUrl
          : vdeioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicDescription: arabicDescription == freezed
          ? _value.arabicDescription
          : arabicDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalDescription: additionalDescription == freezed
          ? _value.additionalDescription
          : additionalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBlock: salesBlock == freezed
          ? _value.salesBlock
          : salesBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemCatalog: itemCatalog == freezed
          ? _value.itemCatalog
          : itemCatalog // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemImage: itemImage == freezed
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      stockWarning: stockWarning == freezed
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemCatelog1: itemCatelog1 == freezed
          ? _value.itemCatelog1
          : itemCatelog1 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCatelog2: itemCatelog2 == freezed
          ? _value.itemCatelog2
          : itemCatelog2 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCatelog3: itemCatelog3 == freezed
          ? _value.itemCatelog3
          : itemCatelog3 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCatelog4: itemCatelog4 == freezed
          ? _value.itemCatelog4
          : itemCatelog4 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $BarcodeCopyWith<$Res>? get barcode {
    if (_value.barcode == null) {
      return null;
    }

    return $BarcodeCopyWith<$Res>(_value.barcode!, (value) {
      return _then(_value.copyWith(barcode: value));
    });
  }

  @override
  $QrCodeCopyWith<$Res>? get qrcode {
    if (_value.qrcode == null) {
      return null;
    }

    return $QrCodeCopyWith<$Res>(_value.qrcode!, (value) {
      return _then(_value.copyWith(qrcode: value));
    });
  }

  @override
  $DimensionCopyWith<$Res>? get dimension {
    if (_value.dimension == null) {
      return null;
    }

    return $DimensionCopyWith<$Res>(_value.dimension!, (value) {
      return _then(_value.copyWith(dimension: value));
    });
  }

  @override
  $UomNameDataCopyWith<$Res>? get uomNameData {
    if (_value.uomNameData == null) {
      return null;
    }

    return $UomNameDataCopyWith<$Res>(_value.uomNameData!, (value) {
      return _then(_value.copyWith(uomNameData: value));
    });
  }

  @override
  $SalesUomDataCopyWith<$Res>? get salesUomData {
    if (_value.salesUomData == null) {
      return null;
    }

    return $SalesUomDataCopyWith<$Res>(_value.salesUomData!, (value) {
      return _then(_value.copyWith(salesUomData: value));
    });
  }

  @override
  $PurchaseUomDataCopyWith<$Res>? get purchaseUomdata {
    if (_value.purchaseUomdata == null) {
      return null;
    }

    return $PurchaseUomDataCopyWith<$Res>(_value.purchaseUomdata!, (value) {
      return _then(_value.copyWith(purchaseUomdata: value));
    });
  }

  @override
  $VariantFrameWorkCopyWith<$Res>? get variantframeWork {
    if (_value.variantframeWork == null) {
      return null;
    }

    return $VariantFrameWorkCopyWith<$Res>(_value.variantframeWork!, (value) {
      return _then(_value.copyWith(variantframeWork: value));
    });
  }

  @override
  $VariantMetaCopyWith<$Res>? get variantMeta {
    if (_value.variantMeta == null) {
      return null;
    }

    return $VariantMetaCopyWith<$Res>(_value.variantMeta!, (value) {
      return _then(_value.copyWith(variantMeta: value));
    });
  }

  @override
  $ItemDataCopyWith<$Res>? get itemData {
    if (_value.itemData == null) {
      return null;
    }

    return $ItemDataCopyWith<$Res>(_value.itemData!, (value) {
      return _then(_value.copyWith(itemData: value));
    });
  }
}

/// @nodoc
abstract class _$VariantReadModelCopyWith<$Res>
    implements $VariantReadModelCopyWith<$Res> {
  factory _$VariantReadModelCopyWith(
          _VariantReadModel value, $Res Function(_VariantReadModel) then) =
      __$VariantReadModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? code,
      double? vat,
      String? description,
      String? name,
      String? image1,
      String? image2,
      String? image3,
      Barcode? barcode,
      QrCode? qrcode,
      Dimension? dimension,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "variantframework_id")
          int? variantFrameWorkId,
      @JsonKey(name: "uom_id")
          String? uomId,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "uom_group_name")
          String? uomGroupName,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reOrderQuantity,
      @JsonKey(name: "linked_item")
          String? linkedItem,
      @JsonKey(name: "var_alternative_barcode")
          List<AlternativeBarcode>? alterNativeBarcode,
      @JsonKey(name: "var_alternative_qrcode")
          List<AlternativeBarcode>? alterNativeQrCode,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "weight_uom_id")
          int? weightUomId,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSaleOrderLimit,
      @JsonKey(name: "min_sales_order_limit")
          int? minSaleOrderLimit,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "return_type_options")
          List<String>? returType,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "manufacture_id")
          int? manuFacturedId,
      @JsonKey(name: "manufacture_name")
          String? manuFacturedName,
      @JsonKey(name: "avrg_gp")
          double? avgGp,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "max_gp")
          double? maxGp,
      @JsonKey(name: "min_gp")
          double? minGap,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "uom_name_data")
          UomNameData? uomNameData,
      @JsonKey(name: "sales_uom_data")
          SalesUomData? salesUomData,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "purchase_uom_data")
          PurchaseUomData? purchaseUomdata,
      @JsonKey(name: "variant_framework_data")
          VariantFrameWork? variantframeWork,
      @JsonKey(name: "variant_meta")
          VariantMeta? variantMeta,
      @JsonKey(name: "item_data")
          ItemData? itemData,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "sales_uom")
          String? SalesUom,
      @JsonKey(name: "gross_weight")
          String? grossWeight,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "net_weight")
          String? netWeight,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "display_name")
          String? displayname,
      @JsonKey(name: "purchase_uom")
          String? purchaseuom,
      @JsonKey(name: "vedio_url")
          String? vdeioUrl,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBlock,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatalog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "item_cataloge1")
          String? itemCatelog1,
      @JsonKey(name: "item_cataloge2")
          String? itemCatelog2,
      @JsonKey(name: "item_cataloge3")
          String? itemCatelog3,
      @JsonKey(name: "item_cataloge4")
          String? itemCatelog4});

  @override
  $BarcodeCopyWith<$Res>? get barcode;
  @override
  $QrCodeCopyWith<$Res>? get qrcode;
  @override
  $DimensionCopyWith<$Res>? get dimension;
  @override
  $UomNameDataCopyWith<$Res>? get uomNameData;
  @override
  $SalesUomDataCopyWith<$Res>? get salesUomData;
  @override
  $PurchaseUomDataCopyWith<$Res>? get purchaseUomdata;
  @override
  $VariantFrameWorkCopyWith<$Res>? get variantframeWork;
  @override
  $VariantMetaCopyWith<$Res>? get variantMeta;
  @override
  $ItemDataCopyWith<$Res>? get itemData;
}

/// @nodoc
class __$VariantReadModelCopyWithImpl<$Res>
    extends _$VariantReadModelCopyWithImpl<$Res>
    implements _$VariantReadModelCopyWith<$Res> {
  __$VariantReadModelCopyWithImpl(
      _VariantReadModel _value, $Res Function(_VariantReadModel) _then)
      : super(_value, (v) => _then(v as _VariantReadModel));

  @override
  _VariantReadModel get _value => super._value as _VariantReadModel;

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
    Object? barcode = freezed,
    Object? qrcode = freezed,
    Object? dimension = freezed,
    Object? uomCode = freezed,
    Object? variantFrameWorkId = freezed,
    Object? uomId = freezed,
    Object? inventoryId = freezed,
    Object? uomGroupName = freezed,
    Object? reOrderPoint = freezed,
    Object? reOrderQuantity = freezed,
    Object? linkedItem = freezed,
    Object? alterNativeBarcode = freezed,
    Object? alterNativeQrCode = freezed,
    Object? unitCost = freezed,
    Object? weightUomId = freezed,
    Object? maxSaleOrderLimit = freezed,
    Object? minSaleOrderLimit = freezed,
    Object? actualCost = freezed,
    Object? returType = freezed,
    Object? safetyStock = freezed,
    Object? minPurchaseOrderLimit = freezed,
    Object? maxPurchaseOrderLimit = freezed,
    Object? manuFacturedId = freezed,
    Object? manuFacturedName = freezed,
    Object? avgGp = freezed,
    Object? returnType = freezed,
    Object? returnTime = freezed,
    Object? maxGp = freezed,
    Object? minGap = freezed,
    Object? targetedGp = freezed,
    Object? excessTax = freezed,
    Object? landingCost = freezed,
    Object? uomNameData = freezed,
    Object? salesUomData = freezed,
    Object? vendorDetails = freezed,
    Object? purchaseUomdata = freezed,
    Object? variantframeWork = freezed,
    Object? variantMeta = freezed,
    Object? itemData = freezed,
    Object? searchName = freezed,
    Object? SalesUom = freezed,
    Object? grossWeight = freezed,
    Object? producedCountry = freezed,
    Object? netWeight = freezed,
    Object? posName = freezed,
    Object? displayname = freezed,
    Object? purchaseuom = freezed,
    Object? vdeioUrl = freezed,
    Object? arabicDescription = freezed,
    Object? additionalDescription = freezed,
    Object? isActive = freezed,
    Object? salesBlock = freezed,
    Object? purchaseBlock = freezed,
    Object? itemCatalog = freezed,
    Object? itemImage = freezed,
    Object? stockWarning = freezed,
    Object? itemCatelog1 = freezed,
    Object? itemCatelog2 = freezed,
    Object? itemCatelog3 = freezed,
    Object? itemCatelog4 = freezed,
  }) {
    return _then(_VariantReadModel(
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
              as String?,
      image3: image3 == freezed
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      qrcode: qrcode == freezed
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as QrCode?,
      dimension: dimension == freezed
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as Dimension?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkId: variantFrameWorkId == freezed
          ? _value.variantFrameWorkId
          : variantFrameWorkId // ignore: cast_nullable_to_non_nullable
              as int?,
      uomId: uomId == freezed
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: inventoryId == freezed
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      uomGroupName: uomGroupName == freezed
          ? _value.uomGroupName
          : uomGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
      reOrderPoint: reOrderPoint == freezed
          ? _value.reOrderPoint
          : reOrderPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      reOrderQuantity: reOrderQuantity == freezed
          ? _value.reOrderQuantity
          : reOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      linkedItem: linkedItem == freezed
          ? _value.linkedItem
          : linkedItem // ignore: cast_nullable_to_non_nullable
              as String?,
      alterNativeBarcode: alterNativeBarcode == freezed
          ? _value.alterNativeBarcode
          : alterNativeBarcode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      alterNativeQrCode: alterNativeQrCode == freezed
          ? _value.alterNativeQrCode
          : alterNativeQrCode // ignore: cast_nullable_to_non_nullable
              as List<AlternativeBarcode>?,
      unitCost: unitCost == freezed
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      weightUomId: weightUomId == freezed
          ? _value.weightUomId
          : weightUomId // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSaleOrderLimit: maxSaleOrderLimit == freezed
          ? _value.maxSaleOrderLimit
          : maxSaleOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      minSaleOrderLimit: minSaleOrderLimit == freezed
          ? _value.minSaleOrderLimit
          : minSaleOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      actualCost: actualCost == freezed
          ? _value.actualCost
          : actualCost // ignore: cast_nullable_to_non_nullable
              as double?,
      returType: returType == freezed
          ? _value.returType
          : returType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      safetyStock: safetyStock == freezed
          ? _value.safetyStock
          : safetyStock // ignore: cast_nullable_to_non_nullable
              as int?,
      minPurchaseOrderLimit: minPurchaseOrderLimit == freezed
          ? _value.minPurchaseOrderLimit
          : minPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPurchaseOrderLimit: maxPurchaseOrderLimit == freezed
          ? _value.maxPurchaseOrderLimit
          : maxPurchaseOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFacturedId: manuFacturedId == freezed
          ? _value.manuFacturedId
          : manuFacturedId // ignore: cast_nullable_to_non_nullable
              as int?,
      manuFacturedName: manuFacturedName == freezed
          ? _value.manuFacturedName
          : manuFacturedName // ignore: cast_nullable_to_non_nullable
              as String?,
      avgGp: avgGp == freezed
          ? _value.avgGp
          : avgGp // ignore: cast_nullable_to_non_nullable
              as double?,
      returnType: returnType == freezed
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTime: returnTime == freezed
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as int?,
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
      landingCost: landingCost == freezed
          ? _value.landingCost
          : landingCost // ignore: cast_nullable_to_non_nullable
              as double?,
      uomNameData: uomNameData == freezed
          ? _value.uomNameData
          : uomNameData // ignore: cast_nullable_to_non_nullable
              as UomNameData?,
      salesUomData: salesUomData == freezed
          ? _value.salesUomData
          : salesUomData // ignore: cast_nullable_to_non_nullable
              as SalesUomData?,
      vendorDetails: vendorDetails == freezed
          ? _value.vendorDetails
          : vendorDetails // ignore: cast_nullable_to_non_nullable
              as List<VendorDetails>?,
      purchaseUomdata: purchaseUomdata == freezed
          ? _value.purchaseUomdata
          : purchaseUomdata // ignore: cast_nullable_to_non_nullable
              as PurchaseUomData?,
      variantframeWork: variantframeWork == freezed
          ? _value.variantframeWork
          : variantframeWork // ignore: cast_nullable_to_non_nullable
              as VariantFrameWork?,
      variantMeta: variantMeta == freezed
          ? _value.variantMeta
          : variantMeta // ignore: cast_nullable_to_non_nullable
              as VariantMeta?,
      itemData: itemData == freezed
          ? _value.itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as ItemData?,
      searchName: searchName == freezed
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      SalesUom: SalesUom == freezed
          ? _value.SalesUom
          : SalesUom // ignore: cast_nullable_to_non_nullable
              as String?,
      grossWeight: grossWeight == freezed
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      producedCountry: producedCountry == freezed
          ? _value.producedCountry
          : producedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      netWeight: netWeight == freezed
          ? _value.netWeight
          : netWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      posName: posName == freezed
          ? _value.posName
          : posName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayname: displayname == freezed
          ? _value.displayname
          : displayname // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseuom: purchaseuom == freezed
          ? _value.purchaseuom
          : purchaseuom // ignore: cast_nullable_to_non_nullable
              as String?,
      vdeioUrl: vdeioUrl == freezed
          ? _value.vdeioUrl
          : vdeioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicDescription: arabicDescription == freezed
          ? _value.arabicDescription
          : arabicDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalDescription: additionalDescription == freezed
          ? _value.additionalDescription
          : additionalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      salesBlock: salesBlock == freezed
          ? _value.salesBlock
          : salesBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      purchaseBlock: purchaseBlock == freezed
          ? _value.purchaseBlock
          : purchaseBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemCatalog: itemCatalog == freezed
          ? _value.itemCatalog
          : itemCatalog // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemImage: itemImage == freezed
          ? _value.itemImage
          : itemImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      stockWarning: stockWarning == freezed
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      itemCatelog1: itemCatelog1 == freezed
          ? _value.itemCatelog1
          : itemCatelog1 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCatelog2: itemCatelog2 == freezed
          ? _value.itemCatelog2
          : itemCatelog2 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCatelog3: itemCatelog3 == freezed
          ? _value.itemCatelog3
          : itemCatelog3 // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCatelog4: itemCatelog4 == freezed
          ? _value.itemCatelog4
          : itemCatelog4 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantReadModel implements _VariantReadModel {
  const _$_VariantReadModel(
      {this.id,
      this.code,
      this.vat,
      this.description,
      this.name,
      this.image1,
      this.image2,
      this.image3,
      this.barcode,
      this.qrcode,
      this.dimension,
      @JsonKey(name: "uom_code") this.uomCode,
      @JsonKey(name: "variantframework_id") this.variantFrameWorkId,
      @JsonKey(name: "uom_id") this.uomId,
      @JsonKey(name: "inventory_id") this.inventoryId,
      @JsonKey(name: "uom_group_name") this.uomGroupName,
      @JsonKey(name: "reorder_point") this.reOrderPoint,
      @JsonKey(name: "reorder_quantity") this.reOrderQuantity,
      @JsonKey(name: "linked_item") this.linkedItem,
      @JsonKey(name: "var_alternative_barcode") this.alterNativeBarcode,
      @JsonKey(name: "var_alternative_qrcode") this.alterNativeQrCode,
      @JsonKey(name: "unit_cost") this.unitCost,
      @JsonKey(name: "weight_uom_id") this.weightUomId,
      @JsonKey(name: "max_sales_order_limit") this.maxSaleOrderLimit,
      @JsonKey(name: "min_sales_order_limit") this.minSaleOrderLimit,
      @JsonKey(name: "actual_cost") this.actualCost,
      @JsonKey(name: "return_type_options") this.returType,
      @JsonKey(name: "safty_stock") this.safetyStock,
      @JsonKey(name: "min_purchase_order_limit") this.minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit") this.maxPurchaseOrderLimit,
      @JsonKey(name: "manufacture_id") this.manuFacturedId,
      @JsonKey(name: "manufacture_name") this.manuFacturedName,
      @JsonKey(name: "avrg_gp") this.avgGp,
      @JsonKey(name: "return_type") this.returnType,
      @JsonKey(name: "return_time") this.returnTime,
      @JsonKey(name: "max_gp") this.maxGp,
      @JsonKey(name: "min_gp") this.minGap,
      @JsonKey(name: "targeted_gp") this.targetedGp,
      @JsonKey(name: "excess_tax") this.excessTax,
      @JsonKey(name: "landing_cost") this.landingCost,
      @JsonKey(name: "uom_name_data") this.uomNameData,
      @JsonKey(name: "sales_uom_data") this.salesUomData,
      @JsonKey(name: "vendor_details") this.vendorDetails,
      @JsonKey(name: "purchase_uom_data") this.purchaseUomdata,
      @JsonKey(name: "variant_framework_data") this.variantframeWork,
      @JsonKey(name: "variant_meta") this.variantMeta,
      @JsonKey(name: "item_data") this.itemData,
      @JsonKey(name: "search_name") this.searchName,
      @JsonKey(name: "sales_uom") this.SalesUom,
      @JsonKey(name: "gross_weight") this.grossWeight,
      @JsonKey(name: "produced_country") this.producedCountry,
      @JsonKey(name: "net_weight") this.netWeight,
      @JsonKey(name: "pos_name") this.posName,
      @JsonKey(name: "display_name") this.displayname,
      @JsonKey(name: "purchase_uom") this.purchaseuom,
      @JsonKey(name: "vedio_url") this.vdeioUrl,
      @JsonKey(name: "arabic_description") this.arabicDescription,
      @JsonKey(name: "additional_description") this.additionalDescription,
      @JsonKey(name: "is_active", defaultValue: false) this.isActive,
      @JsonKey(name: "sales_block", defaultValue: false) this.salesBlock,
      @JsonKey(name: "purchase_block", defaultValue: false) this.purchaseBlock,
      @JsonKey(name: "item_catalog", defaultValue: false) this.itemCatalog,
      @JsonKey(name: "item_image", defaultValue: false) this.itemImage,
      @JsonKey(name: "stock_warning", defaultValue: false) this.stockWarning,
      @JsonKey(name: "item_cataloge1") this.itemCatelog1,
      @JsonKey(name: "item_cataloge2") this.itemCatelog2,
      @JsonKey(name: "item_cataloge3") this.itemCatelog3,
      @JsonKey(name: "item_cataloge4") this.itemCatelog4});

  factory _$_VariantReadModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantReadModelFromJson(json);

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
  final String? image2;
  @override
  final String? image3;
  @override
  final Barcode? barcode;
  @override
  final QrCode? qrcode;
  @override
  final Dimension? dimension;
  @override
  @JsonKey(name: "uom_code")
  final String? uomCode;
  @override
  @JsonKey(name: "variantframework_id")
  final int? variantFrameWorkId;
  @override
  @JsonKey(name: "uom_id")
  final String? uomId;
  @override
  @JsonKey(name: "inventory_id")
  final String? inventoryId;
  @override
  @JsonKey(name: "uom_group_name")
  final String? uomGroupName;
  @override
  @JsonKey(name: "reorder_point")
  final int? reOrderPoint;
  @override
  @JsonKey(name: "reorder_quantity")
  final int? reOrderQuantity;
  @override
  @JsonKey(name: "linked_item")
  final String? linkedItem;
  @override
  @JsonKey(name: "var_alternative_barcode")
  final List<AlternativeBarcode>? alterNativeBarcode;
  @override
  @JsonKey(name: "var_alternative_qrcode")
  final List<AlternativeBarcode>? alterNativeQrCode;
  @override
  @JsonKey(name: "unit_cost")
  final double? unitCost;
  @override
  @JsonKey(name: "weight_uom_id")
  final int? weightUomId;
  @override
  @JsonKey(name: "max_sales_order_limit")
  final int? maxSaleOrderLimit;
  @override
  @JsonKey(name: "min_sales_order_limit")
  final int? minSaleOrderLimit;
  @override
  @JsonKey(name: "actual_cost")
  final double? actualCost;
  @override
  @JsonKey(name: "return_type_options")
  final List<String>? returType;
  @override
  @JsonKey(name: "safty_stock")
  final int? safetyStock;
  @override
  @JsonKey(name: "min_purchase_order_limit")
  final int? minPurchaseOrderLimit;
  @override
  @JsonKey(name: "max_purchase_order_limit")
  final int? maxPurchaseOrderLimit;
  @override
  @JsonKey(name: "manufacture_id")
  final int? manuFacturedId;
  @override
  @JsonKey(name: "manufacture_name")
  final String? manuFacturedName;
  @override
  @JsonKey(name: "avrg_gp")
  final double? avgGp;
  @override
  @JsonKey(name: "return_type")
  final String? returnType;
  @override
  @JsonKey(name: "return_time")
  final int? returnTime;
  @override
  @JsonKey(name: "max_gp")
  final double? maxGp;
  @override
  @JsonKey(name: "min_gp")
  final double? minGap;
  @override
  @JsonKey(name: "targeted_gp")
  final double? targetedGp;
  @override
  @JsonKey(name: "excess_tax")
  final double? excessTax;
  @override
  @JsonKey(name: "landing_cost")
  final double? landingCost;
  @override
  @JsonKey(name: "uom_name_data")
  final UomNameData? uomNameData;
  @override
  @JsonKey(name: "sales_uom_data")
  final SalesUomData? salesUomData;
  @override
  @JsonKey(name: "vendor_details")
  final List<VendorDetails>? vendorDetails;
  @override
  @JsonKey(name: "purchase_uom_data")
  final PurchaseUomData? purchaseUomdata;
  @override
  @JsonKey(name: "variant_framework_data")
  final VariantFrameWork? variantframeWork;
  @override
  @JsonKey(name: "variant_meta")
  final VariantMeta? variantMeta;
  @override
  @JsonKey(name: "item_data")
  final ItemData? itemData;
  @override
  @JsonKey(name: "search_name")
  final String? searchName;
  @override // @JsonKey(name: "manufacture_name") final String? manufacturedName,
  @JsonKey(name: "sales_uom")
  final String? SalesUom;
  @override
  @JsonKey(name: "gross_weight")
  final String? grossWeight;
  @override
  @JsonKey(name: "produced_country")
  final String? producedCountry;
  @override
  @JsonKey(name: "net_weight")
  final String? netWeight;
  @override
  @JsonKey(name: "pos_name")
  final String? posName;
  @override
  @JsonKey(name: "display_name")
  final String? displayname;
  @override
  @JsonKey(name: "purchase_uom")
  final String? purchaseuom;
  @override
  @JsonKey(name: "vedio_url")
  final String? vdeioUrl;
  @override
  @JsonKey(name: "arabic_description")
  final String? arabicDescription;
  @override
  @JsonKey(name: "additional_description")
  final String? additionalDescription;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  final bool? isActive;
  @override
  @JsonKey(name: "sales_block", defaultValue: false)
  final bool? salesBlock;
  @override
  @JsonKey(name: "purchase_block", defaultValue: false)
  final bool? purchaseBlock;
  @override
  @JsonKey(name: "item_catalog", defaultValue: false)
  final bool? itemCatalog;
  @override
  @JsonKey(name: "item_image", defaultValue: false)
  final bool? itemImage;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  final bool? stockWarning;
  @override
  @JsonKey(name: "item_cataloge1")
  final String? itemCatelog1;
  @override
  @JsonKey(name: "item_cataloge2")
  final String? itemCatelog2;
  @override
  @JsonKey(name: "item_cataloge3")
  final String? itemCatelog3;
  @override
  @JsonKey(name: "item_cataloge4")
  final String? itemCatelog4;

  @override
  String toString() {
    return 'VariantReadModel(id: $id, code: $code, vat: $vat, description: $description, name: $name, image1: $image1, image2: $image2, image3: $image3, barcode: $barcode, qrcode: $qrcode, dimension: $dimension, uomCode: $uomCode, variantFrameWorkId: $variantFrameWorkId, uomId: $uomId, inventoryId: $inventoryId, uomGroupName: $uomGroupName, reOrderPoint: $reOrderPoint, reOrderQuantity: $reOrderQuantity, linkedItem: $linkedItem, alterNativeBarcode: $alterNativeBarcode, alterNativeQrCode: $alterNativeQrCode, unitCost: $unitCost, weightUomId: $weightUomId, maxSaleOrderLimit: $maxSaleOrderLimit, minSaleOrderLimit: $minSaleOrderLimit, actualCost: $actualCost, returType: $returType, safetyStock: $safetyStock, minPurchaseOrderLimit: $minPurchaseOrderLimit, maxPurchaseOrderLimit: $maxPurchaseOrderLimit, manuFacturedId: $manuFacturedId, manuFacturedName: $manuFacturedName, avgGp: $avgGp, returnType: $returnType, returnTime: $returnTime, maxGp: $maxGp, minGap: $minGap, targetedGp: $targetedGp, excessTax: $excessTax, landingCost: $landingCost, uomNameData: $uomNameData, salesUomData: $salesUomData, vendorDetails: $vendorDetails, purchaseUomdata: $purchaseUomdata, variantframeWork: $variantframeWork, variantMeta: $variantMeta, itemData: $itemData, searchName: $searchName, SalesUom: $SalesUom, grossWeight: $grossWeight, producedCountry: $producedCountry, netWeight: $netWeight, posName: $posName, displayname: $displayname, purchaseuom: $purchaseuom, vdeioUrl: $vdeioUrl, arabicDescription: $arabicDescription, additionalDescription: $additionalDescription, isActive: $isActive, salesBlock: $salesBlock, purchaseBlock: $purchaseBlock, itemCatalog: $itemCatalog, itemImage: $itemImage, stockWarning: $stockWarning, itemCatelog1: $itemCatelog1, itemCatelog2: $itemCatelog2, itemCatelog3: $itemCatelog3, itemCatelog4: $itemCatelog4)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantReadModel &&
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
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.qrcode, qrcode) ||
                const DeepCollectionEquality().equals(other.qrcode, qrcode)) &&
            (identical(other.dimension, dimension) ||
                const DeepCollectionEquality()
                    .equals(other.dimension, dimension)) &&
            (identical(other.uomCode, uomCode) ||
                const DeepCollectionEquality()
                    .equals(other.uomCode, uomCode)) &&
            (identical(other.variantFrameWorkId, variantFrameWorkId) ||
                const DeepCollectionEquality()
                    .equals(other.variantFrameWorkId, variantFrameWorkId)) &&
            (identical(other.uomId, uomId) ||
                const DeepCollectionEquality().equals(other.uomId, uomId)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.uomGroupName, uomGroupName) ||
                const DeepCollectionEquality()
                    .equals(other.uomGroupName, uomGroupName)) &&
            (identical(other.reOrderPoint, reOrderPoint) ||
                const DeepCollectionEquality()
                    .equals(other.reOrderPoint, reOrderPoint)) &&
            (identical(other.reOrderQuantity, reOrderQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.reOrderQuantity, reOrderQuantity)) &&
            (identical(other.linkedItem, linkedItem) ||
                const DeepCollectionEquality()
                    .equals(other.linkedItem, linkedItem)) &&
            (identical(other.alterNativeBarcode, alterNativeBarcode) ||
                const DeepCollectionEquality()
                    .equals(other.alterNativeBarcode, alterNativeBarcode)) &&
            (identical(other.alterNativeQrCode, alterNativeQrCode) ||
                const DeepCollectionEquality()
                    .equals(other.alterNativeQrCode, alterNativeQrCode)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.weightUomId, weightUomId) ||
                const DeepCollectionEquality()
                    .equals(other.weightUomId, weightUomId)) &&
            (identical(other.maxSaleOrderLimit, maxSaleOrderLimit) ||
                const DeepCollectionEquality()
                    .equals(other.maxSaleOrderLimit, maxSaleOrderLimit)) &&
            (identical(other.minSaleOrderLimit, minSaleOrderLimit) ||
                const DeepCollectionEquality()
                    .equals(other.minSaleOrderLimit, minSaleOrderLimit)) &&
            (identical(other.actualCost, actualCost) ||
                const DeepCollectionEquality()
                    .equals(other.actualCost, actualCost)) &&
            (identical(other.returType, returType) || const DeepCollectionEquality().equals(other.returType, returType)) &&
            (identical(other.safetyStock, safetyStock) || const DeepCollectionEquality().equals(other.safetyStock, safetyStock)) &&
            (identical(other.minPurchaseOrderLimit, minPurchaseOrderLimit) || const DeepCollectionEquality().equals(other.minPurchaseOrderLimit, minPurchaseOrderLimit)) &&
            (identical(other.maxPurchaseOrderLimit, maxPurchaseOrderLimit) || const DeepCollectionEquality().equals(other.maxPurchaseOrderLimit, maxPurchaseOrderLimit)) &&
            (identical(other.manuFacturedId, manuFacturedId) || const DeepCollectionEquality().equals(other.manuFacturedId, manuFacturedId)) &&
            (identical(other.manuFacturedName, manuFacturedName) || const DeepCollectionEquality().equals(other.manuFacturedName, manuFacturedName)) &&
            (identical(other.avgGp, avgGp) || const DeepCollectionEquality().equals(other.avgGp, avgGp)) &&
            (identical(other.returnType, returnType) || const DeepCollectionEquality().equals(other.returnType, returnType)) &&
            (identical(other.returnTime, returnTime) || const DeepCollectionEquality().equals(other.returnTime, returnTime)) &&
            (identical(other.maxGp, maxGp) || const DeepCollectionEquality().equals(other.maxGp, maxGp)) &&
            (identical(other.minGap, minGap) || const DeepCollectionEquality().equals(other.minGap, minGap)) &&
            (identical(other.targetedGp, targetedGp) || const DeepCollectionEquality().equals(other.targetedGp, targetedGp)) &&
            (identical(other.excessTax, excessTax) || const DeepCollectionEquality().equals(other.excessTax, excessTax)) &&
            (identical(other.landingCost, landingCost) || const DeepCollectionEquality().equals(other.landingCost, landingCost)) &&
            (identical(other.uomNameData, uomNameData) || const DeepCollectionEquality().equals(other.uomNameData, uomNameData)) &&
            (identical(other.salesUomData, salesUomData) || const DeepCollectionEquality().equals(other.salesUomData, salesUomData)) &&
            (identical(other.vendorDetails, vendorDetails) || const DeepCollectionEquality().equals(other.vendorDetails, vendorDetails)) &&
            (identical(other.purchaseUomdata, purchaseUomdata) || const DeepCollectionEquality().equals(other.purchaseUomdata, purchaseUomdata)) &&
            (identical(other.variantframeWork, variantframeWork) || const DeepCollectionEquality().equals(other.variantframeWork, variantframeWork)) &&
            (identical(other.variantMeta, variantMeta) || const DeepCollectionEquality().equals(other.variantMeta, variantMeta)) &&
            (identical(other.itemData, itemData) || const DeepCollectionEquality().equals(other.itemData, itemData)) &&
            (identical(other.searchName, searchName) || const DeepCollectionEquality().equals(other.searchName, searchName)) &&
            (identical(other.SalesUom, SalesUom) || const DeepCollectionEquality().equals(other.SalesUom, SalesUom)) &&
            (identical(other.grossWeight, grossWeight) || const DeepCollectionEquality().equals(other.grossWeight, grossWeight)) &&
            (identical(other.producedCountry, producedCountry) || const DeepCollectionEquality().equals(other.producedCountry, producedCountry)) &&
            (identical(other.netWeight, netWeight) || const DeepCollectionEquality().equals(other.netWeight, netWeight)) &&
            (identical(other.posName, posName) || const DeepCollectionEquality().equals(other.posName, posName)) &&
            (identical(other.displayname, displayname) || const DeepCollectionEquality().equals(other.displayname, displayname)) &&
            (identical(other.purchaseuom, purchaseuom) || const DeepCollectionEquality().equals(other.purchaseuom, purchaseuom)) &&
            (identical(other.vdeioUrl, vdeioUrl) || const DeepCollectionEquality().equals(other.vdeioUrl, vdeioUrl)) &&
            (identical(other.arabicDescription, arabicDescription) || const DeepCollectionEquality().equals(other.arabicDescription, arabicDescription)) &&
            (identical(other.additionalDescription, additionalDescription) || const DeepCollectionEquality().equals(other.additionalDescription, additionalDescription)) &&
            (identical(other.isActive, isActive) || const DeepCollectionEquality().equals(other.isActive, isActive)) &&
            (identical(other.salesBlock, salesBlock) || const DeepCollectionEquality().equals(other.salesBlock, salesBlock)) &&
            (identical(other.purchaseBlock, purchaseBlock) || const DeepCollectionEquality().equals(other.purchaseBlock, purchaseBlock)) &&
            (identical(other.itemCatalog, itemCatalog) || const DeepCollectionEquality().equals(other.itemCatalog, itemCatalog)) &&
            (identical(other.itemImage, itemImage) || const DeepCollectionEquality().equals(other.itemImage, itemImage)) &&
            (identical(other.stockWarning, stockWarning) || const DeepCollectionEquality().equals(other.stockWarning, stockWarning)) &&
            (identical(other.itemCatelog1, itemCatelog1) || const DeepCollectionEquality().equals(other.itemCatelog1, itemCatelog1)) &&
            (identical(other.itemCatelog2, itemCatelog2) || const DeepCollectionEquality().equals(other.itemCatelog2, itemCatelog2)) &&
            (identical(other.itemCatelog3, itemCatelog3) || const DeepCollectionEquality().equals(other.itemCatelog3, itemCatelog3)) &&
            (identical(other.itemCatelog4, itemCatelog4) || const DeepCollectionEquality().equals(other.itemCatelog4, itemCatelog4)));
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
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(qrcode) ^
      const DeepCollectionEquality().hash(dimension) ^
      const DeepCollectionEquality().hash(uomCode) ^
      const DeepCollectionEquality().hash(variantFrameWorkId) ^
      const DeepCollectionEquality().hash(uomId) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(uomGroupName) ^
      const DeepCollectionEquality().hash(reOrderPoint) ^
      const DeepCollectionEquality().hash(reOrderQuantity) ^
      const DeepCollectionEquality().hash(linkedItem) ^
      const DeepCollectionEquality().hash(alterNativeBarcode) ^
      const DeepCollectionEquality().hash(alterNativeQrCode) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(weightUomId) ^
      const DeepCollectionEquality().hash(maxSaleOrderLimit) ^
      const DeepCollectionEquality().hash(minSaleOrderLimit) ^
      const DeepCollectionEquality().hash(actualCost) ^
      const DeepCollectionEquality().hash(returType) ^
      const DeepCollectionEquality().hash(safetyStock) ^
      const DeepCollectionEquality().hash(minPurchaseOrderLimit) ^
      const DeepCollectionEquality().hash(maxPurchaseOrderLimit) ^
      const DeepCollectionEquality().hash(manuFacturedId) ^
      const DeepCollectionEquality().hash(manuFacturedName) ^
      const DeepCollectionEquality().hash(avgGp) ^
      const DeepCollectionEquality().hash(returnType) ^
      const DeepCollectionEquality().hash(returnTime) ^
      const DeepCollectionEquality().hash(maxGp) ^
      const DeepCollectionEquality().hash(minGap) ^
      const DeepCollectionEquality().hash(targetedGp) ^
      const DeepCollectionEquality().hash(excessTax) ^
      const DeepCollectionEquality().hash(landingCost) ^
      const DeepCollectionEquality().hash(uomNameData) ^
      const DeepCollectionEquality().hash(salesUomData) ^
      const DeepCollectionEquality().hash(vendorDetails) ^
      const DeepCollectionEquality().hash(purchaseUomdata) ^
      const DeepCollectionEquality().hash(variantframeWork) ^
      const DeepCollectionEquality().hash(variantMeta) ^
      const DeepCollectionEquality().hash(itemData) ^
      const DeepCollectionEquality().hash(searchName) ^
      const DeepCollectionEquality().hash(SalesUom) ^
      const DeepCollectionEquality().hash(grossWeight) ^
      const DeepCollectionEquality().hash(producedCountry) ^
      const DeepCollectionEquality().hash(netWeight) ^
      const DeepCollectionEquality().hash(posName) ^
      const DeepCollectionEquality().hash(displayname) ^
      const DeepCollectionEquality().hash(purchaseuom) ^
      const DeepCollectionEquality().hash(vdeioUrl) ^
      const DeepCollectionEquality().hash(arabicDescription) ^
      const DeepCollectionEquality().hash(additionalDescription) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(salesBlock) ^
      const DeepCollectionEquality().hash(purchaseBlock) ^
      const DeepCollectionEquality().hash(itemCatalog) ^
      const DeepCollectionEquality().hash(itemImage) ^
      const DeepCollectionEquality().hash(stockWarning) ^
      const DeepCollectionEquality().hash(itemCatelog1) ^
      const DeepCollectionEquality().hash(itemCatelog2) ^
      const DeepCollectionEquality().hash(itemCatelog3) ^
      const DeepCollectionEquality().hash(itemCatelog4);

  @JsonKey(ignore: true)
  @override
  _$VariantReadModelCopyWith<_VariantReadModel> get copyWith =>
      __$VariantReadModelCopyWithImpl<_VariantReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantReadModelToJson(this);
  }
}

abstract class _VariantReadModel implements VariantReadModel {
  const factory _VariantReadModel(
      {int? id,
      String? code,
      double? vat,
      String? description,
      String? name,
      String? image1,
      String? image2,
      String? image3,
      Barcode? barcode,
      QrCode? qrcode,
      Dimension? dimension,
      @JsonKey(name: "uom_code")
          String? uomCode,
      @JsonKey(name: "variantframework_id")
          int? variantFrameWorkId,
      @JsonKey(name: "uom_id")
          String? uomId,
      @JsonKey(name: "inventory_id")
          String? inventoryId,
      @JsonKey(name: "uom_group_name")
          String? uomGroupName,
      @JsonKey(name: "reorder_point")
          int? reOrderPoint,
      @JsonKey(name: "reorder_quantity")
          int? reOrderQuantity,
      @JsonKey(name: "linked_item")
          String? linkedItem,
      @JsonKey(name: "var_alternative_barcode")
          List<AlternativeBarcode>? alterNativeBarcode,
      @JsonKey(name: "var_alternative_qrcode")
          List<AlternativeBarcode>? alterNativeQrCode,
      @JsonKey(name: "unit_cost")
          double? unitCost,
      @JsonKey(name: "weight_uom_id")
          int? weightUomId,
      @JsonKey(name: "max_sales_order_limit")
          int? maxSaleOrderLimit,
      @JsonKey(name: "min_sales_order_limit")
          int? minSaleOrderLimit,
      @JsonKey(name: "actual_cost")
          double? actualCost,
      @JsonKey(name: "return_type_options")
          List<String>? returType,
      @JsonKey(name: "safty_stock")
          int? safetyStock,
      @JsonKey(name: "min_purchase_order_limit")
          int? minPurchaseOrderLimit,
      @JsonKey(name: "max_purchase_order_limit")
          int? maxPurchaseOrderLimit,
      @JsonKey(name: "manufacture_id")
          int? manuFacturedId,
      @JsonKey(name: "manufacture_name")
          String? manuFacturedName,
      @JsonKey(name: "avrg_gp")
          double? avgGp,
      @JsonKey(name: "return_type")
          String? returnType,
      @JsonKey(name: "return_time")
          int? returnTime,
      @JsonKey(name: "max_gp")
          double? maxGp,
      @JsonKey(name: "min_gp")
          double? minGap,
      @JsonKey(name: "targeted_gp")
          double? targetedGp,
      @JsonKey(name: "excess_tax")
          double? excessTax,
      @JsonKey(name: "landing_cost")
          double? landingCost,
      @JsonKey(name: "uom_name_data")
          UomNameData? uomNameData,
      @JsonKey(name: "sales_uom_data")
          SalesUomData? salesUomData,
      @JsonKey(name: "vendor_details")
          List<VendorDetails>? vendorDetails,
      @JsonKey(name: "purchase_uom_data")
          PurchaseUomData? purchaseUomdata,
      @JsonKey(name: "variant_framework_data")
          VariantFrameWork? variantframeWork,
      @JsonKey(name: "variant_meta")
          VariantMeta? variantMeta,
      @JsonKey(name: "item_data")
          ItemData? itemData,
      @JsonKey(name: "search_name")
          String? searchName,
      @JsonKey(name: "sales_uom")
          String? SalesUom,
      @JsonKey(name: "gross_weight")
          String? grossWeight,
      @JsonKey(name: "produced_country")
          String? producedCountry,
      @JsonKey(name: "net_weight")
          String? netWeight,
      @JsonKey(name: "pos_name")
          String? posName,
      @JsonKey(name: "display_name")
          String? displayname,
      @JsonKey(name: "purchase_uom")
          String? purchaseuom,
      @JsonKey(name: "vedio_url")
          String? vdeioUrl,
      @JsonKey(name: "arabic_description")
          String? arabicDescription,
      @JsonKey(name: "additional_description")
          String? additionalDescription,
      @JsonKey(name: "is_active", defaultValue: false)
          bool? isActive,
      @JsonKey(name: "sales_block", defaultValue: false)
          bool? salesBlock,
      @JsonKey(name: "purchase_block", defaultValue: false)
          bool? purchaseBlock,
      @JsonKey(name: "item_catalog", defaultValue: false)
          bool? itemCatalog,
      @JsonKey(name: "item_image", defaultValue: false)
          bool? itemImage,
      @JsonKey(name: "stock_warning", defaultValue: false)
          bool? stockWarning,
      @JsonKey(name: "item_cataloge1")
          String? itemCatelog1,
      @JsonKey(name: "item_cataloge2")
          String? itemCatelog2,
      @JsonKey(name: "item_cataloge3")
          String? itemCatelog3,
      @JsonKey(name: "item_cataloge4")
          String? itemCatelog4}) = _$_VariantReadModel;

  factory _VariantReadModel.fromJson(Map<String, dynamic> json) =
      _$_VariantReadModel.fromJson;

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
  String? get image2 => throw _privateConstructorUsedError;
  @override
  String? get image3 => throw _privateConstructorUsedError;
  @override
  Barcode? get barcode => throw _privateConstructorUsedError;
  @override
  QrCode? get qrcode => throw _privateConstructorUsedError;
  @override
  Dimension? get dimension => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variantframework_id")
  int? get variantFrameWorkId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_id")
  String? get uomId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "inventory_id")
  String? get inventoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_group_name")
  String? get uomGroupName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "reorder_point")
  int? get reOrderPoint => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "reorder_quantity")
  int? get reOrderQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "linked_item")
  String? get linkedItem => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "var_alternative_barcode")
  List<AlternativeBarcode>? get alterNativeBarcode =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "var_alternative_qrcode")
  List<AlternativeBarcode>? get alterNativeQrCode =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit_cost")
  double? get unitCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "weight_uom_id")
  int? get weightUomId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSaleOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "min_sales_order_limit")
  int? get minSaleOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "actual_cost")
  double? get actualCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_type_options")
  List<String>? get returType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "safty_stock")
  int? get safetyStock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "min_purchase_order_limit")
  int? get minPurchaseOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "max_purchase_order_limit")
  int? get maxPurchaseOrderLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "manufacture_id")
  int? get manuFacturedId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "manufacture_name")
  String? get manuFacturedName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "avrg_gp")
  double? get avgGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_type")
  String? get returnType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "return_time")
  int? get returnTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "max_gp")
  double? get maxGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "min_gp")
  double? get minGap => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "targeted_gp")
  double? get targetedGp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "excess_tax")
  double? get excessTax => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "landing_cost")
  double? get landingCost => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_name_data")
  UomNameData? get uomNameData => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom_data")
  SalesUomData? get salesUomData => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_details")
  List<VendorDetails>? get vendorDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom_data")
  PurchaseUomData? get purchaseUomdata => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_framework_data")
  VariantFrameWork? get variantframeWork => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_meta")
  VariantMeta? get variantMeta => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_data")
  ItemData? get itemData => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "search_name")
  String? get searchName => throw _privateConstructorUsedError;
  @override // @JsonKey(name: "manufacture_name") final String? manufacturedName,
  @JsonKey(name: "sales_uom")
  String? get SalesUom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "gross_weight")
  String? get grossWeight => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "produced_country")
  String? get producedCountry => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "net_weight")
  String? get netWeight => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pos_name")
  String? get posName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "display_name")
  String? get displayname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom")
  String? get purchaseuom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vedio_url")
  String? get vdeioUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "arabic_description")
  String? get arabicDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "additional_description")
  String? get additionalDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active", defaultValue: false)
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_block", defaultValue: false)
  bool? get salesBlock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_block", defaultValue: false)
  bool? get purchaseBlock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_catalog", defaultValue: false)
  bool? get itemCatalog => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_image", defaultValue: false)
  bool? get itemImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "stock_warning", defaultValue: false)
  bool? get stockWarning => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_cataloge1")
  String? get itemCatelog1 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_cataloge2")
  String? get itemCatelog2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_cataloge3")
  String? get itemCatelog3 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_cataloge4")
  String? get itemCatelog4 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantReadModelCopyWith<_VariantReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesUomData _$SalesUomDataFromJson(Map<String, dynamic> json) {
  return _SalesUomData.fromJson(json);
}

/// @nodoc
class _$SalesUomDataTearOff {
  const _$SalesUomDataTearOff();

  _SalesUomData call(
      {int? key,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "sales_uom_code") String? salesUomCode}) {
    return _SalesUomData(
      key: key,
      salesUomName: salesUomName,
      salesUomCode: salesUomCode,
    );
  }

  SalesUomData fromJson(Map<String, Object> json) {
    return SalesUomData.fromJson(json);
  }
}

/// @nodoc
const $SalesUomData = _$SalesUomDataTearOff();

/// @nodoc
mixin _$SalesUomData {
  int? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_uom_code")
  String? get salesUomCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesUomDataCopyWith<SalesUomData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesUomDataCopyWith<$Res> {
  factory $SalesUomDataCopyWith(
          SalesUomData value, $Res Function(SalesUomData) then) =
      _$SalesUomDataCopyWithImpl<$Res>;
  $Res call(
      {int? key,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "sales_uom_code") String? salesUomCode});
}

/// @nodoc
class _$SalesUomDataCopyWithImpl<$Res> implements $SalesUomDataCopyWith<$Res> {
  _$SalesUomDataCopyWithImpl(this._value, this._then);

  final SalesUomData _value;
  // ignore: unused_field
  final $Res Function(SalesUomData) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? salesUomName = freezed,
    Object? salesUomCode = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUomName: salesUomName == freezed
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUomCode: salesUomCode == freezed
          ? _value.salesUomCode
          : salesUomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SalesUomDataCopyWith<$Res>
    implements $SalesUomDataCopyWith<$Res> {
  factory _$SalesUomDataCopyWith(
          _SalesUomData value, $Res Function(_SalesUomData) then) =
      __$SalesUomDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? key,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "sales_uom_code") String? salesUomCode});
}

/// @nodoc
class __$SalesUomDataCopyWithImpl<$Res> extends _$SalesUomDataCopyWithImpl<$Res>
    implements _$SalesUomDataCopyWith<$Res> {
  __$SalesUomDataCopyWithImpl(
      _SalesUomData _value, $Res Function(_SalesUomData) _then)
      : super(_value, (v) => _then(v as _SalesUomData));

  @override
  _SalesUomData get _value => super._value as _SalesUomData;

  @override
  $Res call({
    Object? key = freezed,
    Object? salesUomName = freezed,
    Object? salesUomCode = freezed,
  }) {
    return _then(_SalesUomData(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      salesUomName: salesUomName == freezed
          ? _value.salesUomName
          : salesUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      salesUomCode: salesUomCode == freezed
          ? _value.salesUomCode
          : salesUomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesUomData implements _SalesUomData {
  const _$_SalesUomData(
      {this.key,
      @JsonKey(name: "sales_uom_name") this.salesUomName,
      @JsonKey(name: "sales_uom_code") this.salesUomCode});

  factory _$_SalesUomData.fromJson(Map<String, dynamic> json) =>
      _$$_SalesUomDataFromJson(json);

  @override
  final int? key;
  @override
  @JsonKey(name: "sales_uom_name")
  final String? salesUomName;
  @override
  @JsonKey(name: "sales_uom_code")
  final String? salesUomCode;

  @override
  String toString() {
    return 'SalesUomData(key: $key, salesUomName: $salesUomName, salesUomCode: $salesUomCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalesUomData &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.salesUomName, salesUomName) ||
                const DeepCollectionEquality()
                    .equals(other.salesUomName, salesUomName)) &&
            (identical(other.salesUomCode, salesUomCode) ||
                const DeepCollectionEquality()
                    .equals(other.salesUomCode, salesUomCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(salesUomName) ^
      const DeepCollectionEquality().hash(salesUomCode);

  @JsonKey(ignore: true)
  @override
  _$SalesUomDataCopyWith<_SalesUomData> get copyWith =>
      __$SalesUomDataCopyWithImpl<_SalesUomData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesUomDataToJson(this);
  }
}

abstract class _SalesUomData implements SalesUomData {
  const factory _SalesUomData(
      {int? key,
      @JsonKey(name: "sales_uom_name") String? salesUomName,
      @JsonKey(name: "sales_uom_code") String? salesUomCode}) = _$_SalesUomData;

  factory _SalesUomData.fromJson(Map<String, dynamic> json) =
      _$_SalesUomData.fromJson;

  @override
  int? get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom_name")
  String? get salesUomName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sales_uom_code")
  String? get salesUomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SalesUomDataCopyWith<_SalesUomData> get copyWith =>
      throw _privateConstructorUsedError;
}

Dimension _$DimensionFromJson(Map<String, dynamic> json) {
  return _Dimension.fromJson(json);
}

/// @nodoc
class _$DimensionTearOff {
  const _$DimensionTearOff();

  _Dimension call(
      {double? height, double? width, double? length, double? weight}) {
    return _Dimension(
      height: height,
      width: width,
      length: length,
      weight: weight,
    );
  }

  Dimension fromJson(Map<String, Object> json) {
    return Dimension.fromJson(json);
  }
}

/// @nodoc
const $Dimension = _$DimensionTearOff();

/// @nodoc
mixin _$Dimension {
  double? get height => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get length => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DimensionCopyWith<Dimension> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionCopyWith<$Res> {
  factory $DimensionCopyWith(Dimension value, $Res Function(Dimension) then) =
      _$DimensionCopyWithImpl<$Res>;
  $Res call({double? height, double? width, double? length, double? weight});
}

/// @nodoc
class _$DimensionCopyWithImpl<$Res> implements $DimensionCopyWith<$Res> {
  _$DimensionCopyWithImpl(this._value, this._then);

  final Dimension _value;
  // ignore: unused_field
  final $Res Function(Dimension) _then;

  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
    Object? length = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
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
    ));
  }
}

/// @nodoc
abstract class _$DimensionCopyWith<$Res> implements $DimensionCopyWith<$Res> {
  factory _$DimensionCopyWith(
          _Dimension value, $Res Function(_Dimension) then) =
      __$DimensionCopyWithImpl<$Res>;
  @override
  $Res call({double? height, double? width, double? length, double? weight});
}

/// @nodoc
class __$DimensionCopyWithImpl<$Res> extends _$DimensionCopyWithImpl<$Res>
    implements _$DimensionCopyWith<$Res> {
  __$DimensionCopyWithImpl(_Dimension _value, $Res Function(_Dimension) _then)
      : super(_value, (v) => _then(v as _Dimension));

  @override
  _Dimension get _value => super._value as _Dimension;

  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
    Object? length = freezed,
    Object? weight = freezed,
  }) {
    return _then(_Dimension(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dimension implements _Dimension {
  const _$_Dimension({this.height, this.width, this.length, this.weight});

  factory _$_Dimension.fromJson(Map<String, dynamic> json) =>
      _$$_DimensionFromJson(json);

  @override
  final double? height;
  @override
  final double? width;
  @override
  final double? length;
  @override
  final double? weight;

  @override
  String toString() {
    return 'Dimension(height: $height, width: $width, length: $length, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dimension &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(weight);

  @JsonKey(ignore: true)
  @override
  _$DimensionCopyWith<_Dimension> get copyWith =>
      __$DimensionCopyWithImpl<_Dimension>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DimensionToJson(this);
  }
}

abstract class _Dimension implements Dimension {
  const factory _Dimension(
      {double? height,
      double? width,
      double? length,
      double? weight}) = _$_Dimension;

  factory _Dimension.fromJson(Map<String, dynamic> json) =
      _$_Dimension.fromJson;

  @override
  double? get height => throw _privateConstructorUsedError;
  @override
  double? get width => throw _privateConstructorUsedError;
  @override
  double? get length => throw _privateConstructorUsedError;
  @override
  double? get weight => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DimensionCopyWith<_Dimension> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorDetails _$VendorDetailsFromJson(Map<String, dynamic> json) {
  return _VendorDetails.fromJson(json);
}

/// @nodoc
class _$VendorDetailsTearOff {
  const _$VendorDetailsTearOff();

  _VendorDetails call(
      {@JsonKey(name: "vendor_reference_code") String? vendorReerenceCode,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "vendor_code") String? vendorCode}) {
    return _VendorDetails(
      vendorReerenceCode: vendorReerenceCode,
      vendorName: vendorName,
      vendorCode: vendorCode,
    );
  }

  VendorDetails fromJson(Map<String, Object> json) {
    return VendorDetails.fromJson(json);
  }
}

/// @nodoc
const $VendorDetails = _$VendorDetailsTearOff();

/// @nodoc
mixin _$VendorDetails {
  @JsonKey(name: "vendor_reference_code")
  String? get vendorReerenceCode => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_name")
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorDetailsCopyWith<VendorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorDetailsCopyWith<$Res> {
  factory $VendorDetailsCopyWith(
          VendorDetails value, $Res Function(VendorDetails) then) =
      _$VendorDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "vendor_reference_code") String? vendorReerenceCode,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "vendor_code") String? vendorCode});
}

/// @nodoc
class _$VendorDetailsCopyWithImpl<$Res>
    implements $VendorDetailsCopyWith<$Res> {
  _$VendorDetailsCopyWithImpl(this._value, this._then);

  final VendorDetails _value;
  // ignore: unused_field
  final $Res Function(VendorDetails) _then;

  @override
  $Res call({
    Object? vendorReerenceCode = freezed,
    Object? vendorName = freezed,
    Object? vendorCode = freezed,
  }) {
    return _then(_value.copyWith(
      vendorReerenceCode: vendorReerenceCode == freezed
          ? _value.vendorReerenceCode
          : vendorReerenceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: vendorName == freezed
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VendorDetailsCopyWith<$Res>
    implements $VendorDetailsCopyWith<$Res> {
  factory _$VendorDetailsCopyWith(
          _VendorDetails value, $Res Function(_VendorDetails) then) =
      __$VendorDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "vendor_reference_code") String? vendorReerenceCode,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "vendor_code") String? vendorCode});
}

/// @nodoc
class __$VendorDetailsCopyWithImpl<$Res>
    extends _$VendorDetailsCopyWithImpl<$Res>
    implements _$VendorDetailsCopyWith<$Res> {
  __$VendorDetailsCopyWithImpl(
      _VendorDetails _value, $Res Function(_VendorDetails) _then)
      : super(_value, (v) => _then(v as _VendorDetails));

  @override
  _VendorDetails get _value => super._value as _VendorDetails;

  @override
  $Res call({
    Object? vendorReerenceCode = freezed,
    Object? vendorName = freezed,
    Object? vendorCode = freezed,
  }) {
    return _then(_VendorDetails(
      vendorReerenceCode: vendorReerenceCode == freezed
          ? _value.vendorReerenceCode
          : vendorReerenceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: vendorName == freezed
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: vendorCode == freezed
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VendorDetails implements _VendorDetails {
  const _$_VendorDetails(
      {@JsonKey(name: "vendor_reference_code") this.vendorReerenceCode,
      @JsonKey(name: "vendor_name") this.vendorName,
      @JsonKey(name: "vendor_code") this.vendorCode});

  factory _$_VendorDetails.fromJson(Map<String, dynamic> json) =>
      _$$_VendorDetailsFromJson(json);

  @override
  @JsonKey(name: "vendor_reference_code")
  final String? vendorReerenceCode;
  @override
  @JsonKey(name: "vendor_name")
  final String? vendorName;
  @override
  @JsonKey(name: "vendor_code")
  final String? vendorCode;

  @override
  String toString() {
    return 'VendorDetails(vendorReerenceCode: $vendorReerenceCode, vendorName: $vendorName, vendorCode: $vendorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VendorDetails &&
            (identical(other.vendorReerenceCode, vendorReerenceCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorReerenceCode, vendorReerenceCode)) &&
            (identical(other.vendorName, vendorName) ||
                const DeepCollectionEquality()
                    .equals(other.vendorName, vendorName)) &&
            (identical(other.vendorCode, vendorCode) ||
                const DeepCollectionEquality()
                    .equals(other.vendorCode, vendorCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vendorReerenceCode) ^
      const DeepCollectionEquality().hash(vendorName) ^
      const DeepCollectionEquality().hash(vendorCode);

  @JsonKey(ignore: true)
  @override
  _$VendorDetailsCopyWith<_VendorDetails> get copyWith =>
      __$VendorDetailsCopyWithImpl<_VendorDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorDetailsToJson(this);
  }
}

abstract class _VendorDetails implements VendorDetails {
  const factory _VendorDetails(
      {@JsonKey(name: "vendor_reference_code") String? vendorReerenceCode,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "vendor_code") String? vendorCode}) = _$_VendorDetails;

  factory _VendorDetails.fromJson(Map<String, dynamic> json) =
      _$_VendorDetails.fromJson;

  @override
  @JsonKey(name: "vendor_reference_code")
  String? get vendorReerenceCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_name")
  String? get vendorName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vendor_code")
  String? get vendorCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VendorDetailsCopyWith<_VendorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

UomNameData _$UomNameDataFromJson(Map<String, dynamic> json) {
  return _UomNameData.fromJson(json);
}

/// @nodoc
class _$UomNameDataTearOff {
  const _$UomNameDataTearOff();

  _UomNameData call(
      {int? key,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "uom_code") String? uomCode}) {
    return _UomNameData(
      key: key,
      uomName: uomName,
      uomCode: uomCode,
    );
  }

  UomNameData fromJson(Map<String, Object> json) {
    return UomNameData.fromJson(json);
  }
}

/// @nodoc
const $UomNameData = _$UomNameDataTearOff();

/// @nodoc
mixin _$UomNameData {
  int? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_name")
  String? get uomName => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UomNameDataCopyWith<UomNameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UomNameDataCopyWith<$Res> {
  factory $UomNameDataCopyWith(
          UomNameData value, $Res Function(UomNameData) then) =
      _$UomNameDataCopyWithImpl<$Res>;
  $Res call(
      {int? key,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "uom_code") String? uomCode});
}

/// @nodoc
class _$UomNameDataCopyWithImpl<$Res> implements $UomNameDataCopyWith<$Res> {
  _$UomNameDataCopyWithImpl(this._value, this._then);

  final UomNameData _value;
  // ignore: unused_field
  final $Res Function(UomNameData) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? uomName = freezed,
    Object? uomCode = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      uomName: uomName == freezed
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UomNameDataCopyWith<$Res>
    implements $UomNameDataCopyWith<$Res> {
  factory _$UomNameDataCopyWith(
          _UomNameData value, $Res Function(_UomNameData) then) =
      __$UomNameDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? key,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "uom_code") String? uomCode});
}

/// @nodoc
class __$UomNameDataCopyWithImpl<$Res> extends _$UomNameDataCopyWithImpl<$Res>
    implements _$UomNameDataCopyWith<$Res> {
  __$UomNameDataCopyWithImpl(
      _UomNameData _value, $Res Function(_UomNameData) _then)
      : super(_value, (v) => _then(v as _UomNameData));

  @override
  _UomNameData get _value => super._value as _UomNameData;

  @override
  $Res call({
    Object? key = freezed,
    Object? uomName = freezed,
    Object? uomCode = freezed,
  }) {
    return _then(_UomNameData(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      uomName: uomName == freezed
          ? _value.uomName
          : uomName // ignore: cast_nullable_to_non_nullable
              as String?,
      uomCode: uomCode == freezed
          ? _value.uomCode
          : uomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UomNameData implements _UomNameData {
  const _$_UomNameData(
      {this.key,
      @JsonKey(name: "uom_name") this.uomName,
      @JsonKey(name: "uom_code") this.uomCode});

  factory _$_UomNameData.fromJson(Map<String, dynamic> json) =>
      _$$_UomNameDataFromJson(json);

  @override
  final int? key;
  @override
  @JsonKey(name: "uom_name")
  final String? uomName;
  @override
  @JsonKey(name: "uom_code")
  final String? uomCode;

  @override
  String toString() {
    return 'UomNameData(key: $key, uomName: $uomName, uomCode: $uomCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UomNameData &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.uomName, uomName) ||
                const DeepCollectionEquality()
                    .equals(other.uomName, uomName)) &&
            (identical(other.uomCode, uomCode) ||
                const DeepCollectionEquality().equals(other.uomCode, uomCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(uomName) ^
      const DeepCollectionEquality().hash(uomCode);

  @JsonKey(ignore: true)
  @override
  _$UomNameDataCopyWith<_UomNameData> get copyWith =>
      __$UomNameDataCopyWithImpl<_UomNameData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UomNameDataToJson(this);
  }
}

abstract class _UomNameData implements UomNameData {
  const factory _UomNameData(
      {int? key,
      @JsonKey(name: "uom_name") String? uomName,
      @JsonKey(name: "uom_code") String? uomCode}) = _$_UomNameData;

  factory _UomNameData.fromJson(Map<String, dynamic> json) =
      _$_UomNameData.fromJson;

  @override
  int? get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_name")
  String? get uomName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "uom_code")
  String? get uomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UomNameDataCopyWith<_UomNameData> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseUomData _$PurchaseUomDataFromJson(Map<String, dynamic> json) {
  return _PurchaseUomData.fromJson(json);
}

/// @nodoc
class _$PurchaseUomDataTearOff {
  const _$PurchaseUomDataTearOff();

  _PurchaseUomData call(
      {int? key,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "purchase_uom_code") String? purchaseUomCode}) {
    return _PurchaseUomData(
      key: key,
      purchaseUomName: purchaseUomName,
      purchaseUomCode: purchaseUomCode,
    );
  }

  PurchaseUomData fromJson(Map<String, Object> json) {
    return PurchaseUomData.fromJson(json);
  }
}

/// @nodoc
const $PurchaseUomData = _$PurchaseUomDataTearOff();

/// @nodoc
mixin _$PurchaseUomData {
  int? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom_name")
  String? get purchaseUomName => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_uom_code")
  String? get purchaseUomCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseUomDataCopyWith<PurchaseUomData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseUomDataCopyWith<$Res> {
  factory $PurchaseUomDataCopyWith(
          PurchaseUomData value, $Res Function(PurchaseUomData) then) =
      _$PurchaseUomDataCopyWithImpl<$Res>;
  $Res call(
      {int? key,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "purchase_uom_code") String? purchaseUomCode});
}

/// @nodoc
class _$PurchaseUomDataCopyWithImpl<$Res>
    implements $PurchaseUomDataCopyWith<$Res> {
  _$PurchaseUomDataCopyWithImpl(this._value, this._then);

  final PurchaseUomData _value;
  // ignore: unused_field
  final $Res Function(PurchaseUomData) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? purchaseUomName = freezed,
    Object? purchaseUomCode = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseUomName: purchaseUomName == freezed
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomCode: purchaseUomCode == freezed
          ? _value.purchaseUomCode
          : purchaseUomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseUomDataCopyWith<$Res>
    implements $PurchaseUomDataCopyWith<$Res> {
  factory _$PurchaseUomDataCopyWith(
          _PurchaseUomData value, $Res Function(_PurchaseUomData) then) =
      __$PurchaseUomDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? key,
      @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
      @JsonKey(name: "purchase_uom_code") String? purchaseUomCode});
}

/// @nodoc
class __$PurchaseUomDataCopyWithImpl<$Res>
    extends _$PurchaseUomDataCopyWithImpl<$Res>
    implements _$PurchaseUomDataCopyWith<$Res> {
  __$PurchaseUomDataCopyWithImpl(
      _PurchaseUomData _value, $Res Function(_PurchaseUomData) _then)
      : super(_value, (v) => _then(v as _PurchaseUomData));

  @override
  _PurchaseUomData get _value => super._value as _PurchaseUomData;

  @override
  $Res call({
    Object? key = freezed,
    Object? purchaseUomName = freezed,
    Object? purchaseUomCode = freezed,
  }) {
    return _then(_PurchaseUomData(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseUomName: purchaseUomName == freezed
          ? _value.purchaseUomName
          : purchaseUomName // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseUomCode: purchaseUomCode == freezed
          ? _value.purchaseUomCode
          : purchaseUomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseUomData implements _PurchaseUomData {
  const _$_PurchaseUomData(
      {this.key,
      @JsonKey(name: "purchase_uom_name") this.purchaseUomName,
      @JsonKey(name: "purchase_uom_code") this.purchaseUomCode});

  factory _$_PurchaseUomData.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseUomDataFromJson(json);

  @override
  final int? key;
  @override
  @JsonKey(name: "purchase_uom_name")
  final String? purchaseUomName;
  @override
  @JsonKey(name: "purchase_uom_code")
  final String? purchaseUomCode;

  @override
  String toString() {
    return 'PurchaseUomData(key: $key, purchaseUomName: $purchaseUomName, purchaseUomCode: $purchaseUomCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseUomData &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.purchaseUomName, purchaseUomName) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseUomName, purchaseUomName)) &&
            (identical(other.purchaseUomCode, purchaseUomCode) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseUomCode, purchaseUomCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(purchaseUomName) ^
      const DeepCollectionEquality().hash(purchaseUomCode);

  @JsonKey(ignore: true)
  @override
  _$PurchaseUomDataCopyWith<_PurchaseUomData> get copyWith =>
      __$PurchaseUomDataCopyWithImpl<_PurchaseUomData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseUomDataToJson(this);
  }
}

abstract class _PurchaseUomData implements PurchaseUomData {
  const factory _PurchaseUomData(
          {int? key,
          @JsonKey(name: "purchase_uom_name") String? purchaseUomName,
          @JsonKey(name: "purchase_uom_code") String? purchaseUomCode}) =
      _$_PurchaseUomData;

  factory _PurchaseUomData.fromJson(Map<String, dynamic> json) =
      _$_PurchaseUomData.fromJson;

  @override
  int? get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom_name")
  String? get purchaseUomName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "purchase_uom_code")
  String? get purchaseUomCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseUomDataCopyWith<_PurchaseUomData> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantFrameWork _$VariantFrameWorkFromJson(Map<String, dynamic> json) {
  return _VariantFrameWork.fromJson(json);
}

/// @nodoc
class _$VariantFrameWorkTearOff {
  const _$VariantFrameWorkTearOff();

  _VariantFrameWork call(
      {int? key,
      @JsonKey(name: "variant_framewrok_name") String? variantFrameWork,
      @JsonKey(name: "variant_framewrok_code") String? variantFrameWorkCode}) {
    return _VariantFrameWork(
      key: key,
      variantFrameWork: variantFrameWork,
      variantFrameWorkCode: variantFrameWorkCode,
    );
  }

  VariantFrameWork fromJson(Map<String, Object> json) {
    return VariantFrameWork.fromJson(json);
  }
}

/// @nodoc
const $VariantFrameWork = _$VariantFrameWorkTearOff();

/// @nodoc
mixin _$VariantFrameWork {
  int? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_framewrok_name")
  String? get variantFrameWork => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_framewrok_code")
  String? get variantFrameWorkCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantFrameWorkCopyWith<VariantFrameWork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantFrameWorkCopyWith<$Res> {
  factory $VariantFrameWorkCopyWith(
          VariantFrameWork value, $Res Function(VariantFrameWork) then) =
      _$VariantFrameWorkCopyWithImpl<$Res>;
  $Res call(
      {int? key,
      @JsonKey(name: "variant_framewrok_name") String? variantFrameWork,
      @JsonKey(name: "variant_framewrok_code") String? variantFrameWorkCode});
}

/// @nodoc
class _$VariantFrameWorkCopyWithImpl<$Res>
    implements $VariantFrameWorkCopyWith<$Res> {
  _$VariantFrameWorkCopyWithImpl(this._value, this._then);

  final VariantFrameWork _value;
  // ignore: unused_field
  final $Res Function(VariantFrameWork) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? variantFrameWork = freezed,
    Object? variantFrameWorkCode = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      variantFrameWork: variantFrameWork == freezed
          ? _value.variantFrameWork
          : variantFrameWork // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkCode: variantFrameWorkCode == freezed
          ? _value.variantFrameWorkCode
          : variantFrameWorkCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VariantFrameWorkCopyWith<$Res>
    implements $VariantFrameWorkCopyWith<$Res> {
  factory _$VariantFrameWorkCopyWith(
          _VariantFrameWork value, $Res Function(_VariantFrameWork) then) =
      __$VariantFrameWorkCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? key,
      @JsonKey(name: "variant_framewrok_name") String? variantFrameWork,
      @JsonKey(name: "variant_framewrok_code") String? variantFrameWorkCode});
}

/// @nodoc
class __$VariantFrameWorkCopyWithImpl<$Res>
    extends _$VariantFrameWorkCopyWithImpl<$Res>
    implements _$VariantFrameWorkCopyWith<$Res> {
  __$VariantFrameWorkCopyWithImpl(
      _VariantFrameWork _value, $Res Function(_VariantFrameWork) _then)
      : super(_value, (v) => _then(v as _VariantFrameWork));

  @override
  _VariantFrameWork get _value => super._value as _VariantFrameWork;

  @override
  $Res call({
    Object? key = freezed,
    Object? variantFrameWork = freezed,
    Object? variantFrameWorkCode = freezed,
  }) {
    return _then(_VariantFrameWork(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      variantFrameWork: variantFrameWork == freezed
          ? _value.variantFrameWork
          : variantFrameWork // ignore: cast_nullable_to_non_nullable
              as String?,
      variantFrameWorkCode: variantFrameWorkCode == freezed
          ? _value.variantFrameWorkCode
          : variantFrameWorkCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantFrameWork implements _VariantFrameWork {
  const _$_VariantFrameWork(
      {this.key,
      @JsonKey(name: "variant_framewrok_name") this.variantFrameWork,
      @JsonKey(name: "variant_framewrok_code") this.variantFrameWorkCode});

  factory _$_VariantFrameWork.fromJson(Map<String, dynamic> json) =>
      _$$_VariantFrameWorkFromJson(json);

  @override
  final int? key;
  @override
  @JsonKey(name: "variant_framewrok_name")
  final String? variantFrameWork;
  @override
  @JsonKey(name: "variant_framewrok_code")
  final String? variantFrameWorkCode;

  @override
  String toString() {
    return 'VariantFrameWork(key: $key, variantFrameWork: $variantFrameWork, variantFrameWorkCode: $variantFrameWorkCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantFrameWork &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.variantFrameWork, variantFrameWork) ||
                const DeepCollectionEquality()
                    .equals(other.variantFrameWork, variantFrameWork)) &&
            (identical(other.variantFrameWorkCode, variantFrameWorkCode) ||
                const DeepCollectionEquality()
                    .equals(other.variantFrameWorkCode, variantFrameWorkCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(variantFrameWork) ^
      const DeepCollectionEquality().hash(variantFrameWorkCode);

  @JsonKey(ignore: true)
  @override
  _$VariantFrameWorkCopyWith<_VariantFrameWork> get copyWith =>
      __$VariantFrameWorkCopyWithImpl<_VariantFrameWork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantFrameWorkToJson(this);
  }
}

abstract class _VariantFrameWork implements VariantFrameWork {
  const factory _VariantFrameWork(
      {int? key,
      @JsonKey(name: "variant_framewrok_name")
          String? variantFrameWork,
      @JsonKey(name: "variant_framewrok_code")
          String? variantFrameWorkCode}) = _$_VariantFrameWork;

  factory _VariantFrameWork.fromJson(Map<String, dynamic> json) =
      _$_VariantFrameWork.fromJson;

  @override
  int? get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_framewrok_name")
  String? get variantFrameWork => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_framewrok_code")
  String? get variantFrameWorkCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantFrameWorkCopyWith<_VariantFrameWork> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemData _$ItemDataFromJson(Map<String, dynamic> json) {
  return _ItemData.fromJson(json);
}

/// @nodoc
class _$ItemDataTearOff {
  const _$ItemDataTearOff();

  _ItemData call(
      {@JsonKey(name: "item_name") String? itemName,
      @JsonKey(name: "item_code") String? itemCode,
      String? description}) {
    return _ItemData(
      itemName: itemName,
      itemCode: itemCode,
      description: description,
    );
  }

  ItemData fromJson(Map<String, Object> json) {
    return ItemData.fromJson(json);
  }
}

/// @nodoc
const $ItemData = _$ItemDataTearOff();

/// @nodoc
mixin _$ItemData {
  @JsonKey(name: "item_name")
  String? get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: "item_code")
  String? get itemCode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDataCopyWith<ItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDataCopyWith<$Res> {
  factory $ItemDataCopyWith(ItemData value, $Res Function(ItemData) then) =
      _$ItemDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "item_name") String? itemName,
      @JsonKey(name: "item_code") String? itemCode,
      String? description});
}

/// @nodoc
class _$ItemDataCopyWithImpl<$Res> implements $ItemDataCopyWith<$Res> {
  _$ItemDataCopyWithImpl(this._value, this._then);

  final ItemData _value;
  // ignore: unused_field
  final $Res Function(ItemData) _then;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? itemCode = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCode: itemCode == freezed
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ItemDataCopyWith<$Res> implements $ItemDataCopyWith<$Res> {
  factory _$ItemDataCopyWith(_ItemData value, $Res Function(_ItemData) then) =
      __$ItemDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "item_name") String? itemName,
      @JsonKey(name: "item_code") String? itemCode,
      String? description});
}

/// @nodoc
class __$ItemDataCopyWithImpl<$Res> extends _$ItemDataCopyWithImpl<$Res>
    implements _$ItemDataCopyWith<$Res> {
  __$ItemDataCopyWithImpl(_ItemData _value, $Res Function(_ItemData) _then)
      : super(_value, (v) => _then(v as _ItemData));

  @override
  _ItemData get _value => super._value as _ItemData;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? itemCode = freezed,
    Object? description = freezed,
  }) {
    return _then(_ItemData(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCode: itemCode == freezed
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
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
class _$_ItemData implements _ItemData {
  const _$_ItemData(
      {@JsonKey(name: "item_name") this.itemName,
      @JsonKey(name: "item_code") this.itemCode,
      this.description});

  factory _$_ItemData.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDataFromJson(json);

  @override
  @JsonKey(name: "item_name")
  final String? itemName;
  @override
  @JsonKey(name: "item_code")
  final String? itemCode;
  @override
  final String? description;

  @override
  String toString() {
    return 'ItemData(itemName: $itemName, itemCode: $itemCode, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemData &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$ItemDataCopyWith<_ItemData> get copyWith =>
      __$ItemDataCopyWithImpl<_ItemData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDataToJson(this);
  }
}

abstract class _ItemData implements ItemData {
  const factory _ItemData(
      {@JsonKey(name: "item_name") String? itemName,
      @JsonKey(name: "item_code") String? itemCode,
      String? description}) = _$_ItemData;

  factory _ItemData.fromJson(Map<String, dynamic> json) = _$_ItemData.fromJson;

  @override
  @JsonKey(name: "item_name")
  String? get itemName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "item_code")
  String? get itemCode => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemDataCopyWith<_ItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantMeta _$VariantMetaFromJson(Map<String, dynamic> json) {
  return _VariantMeta.fromJson(json);
}

/// @nodoc
class _$VariantMetaTearOff {
  const _$VariantMetaTearOff();

  _VariantMeta call(
      {Catelog? catelog,
      Storage? storage,
      Storage? Ingrediants,
      String? description,
      @JsonKey(name: "var_image") VarImage? image,
      @JsonKey(name: "important_info") ProductFeatures? importantInfo,
      @JsonKey(name: "product_behaviour") List<productBehaviour>? productBehave,
      @JsonKey(name: "Additional_info") ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts") ProductFeatures? nutriantFacts,
      @JsonKey(name: "product_details") ProductFeatures? productDetails,
      @JsonKey(name: "product_features") ProductFeatures? productFeatures,
      @JsonKey(name: "about_the_products") Storage? aboutProducts,
      @JsonKey(name: "usage_direction") Storage? usageDirection,
      @JsonKey(name: "old_system_code") String? oldSystemCode}) {
    return _VariantMeta(
      catelog: catelog,
      storage: storage,
      Ingrediants: Ingrediants,
      description: description,
      image: image,
      importantInfo: importantInfo,
      productBehave: productBehave,
      additionalInfo: additionalInfo,
      nutriantFacts: nutriantFacts,
      productDetails: productDetails,
      productFeatures: productFeatures,
      aboutProducts: aboutProducts,
      usageDirection: usageDirection,
      oldSystemCode: oldSystemCode,
    );
  }

  VariantMeta fromJson(Map<String, Object> json) {
    return VariantMeta.fromJson(json);
  }
}

/// @nodoc
const $VariantMeta = _$VariantMetaTearOff();

/// @nodoc
mixin _$VariantMeta {
  Catelog? get catelog => throw _privateConstructorUsedError;
  Storage? get storage => throw _privateConstructorUsedError;
  Storage? get Ingrediants => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "var_image")
  VarImage? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "important_info")
  ProductFeatures? get importantInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "product_behaviour")
  List<productBehaviour>? get productBehave =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Additional_info")
  ProductFeatures? get additionalInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "Nutriants_facts")
  ProductFeatures? get nutriantFacts => throw _privateConstructorUsedError;
  @JsonKey(name: "product_details")
  ProductFeatures? get productDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "product_features")
  ProductFeatures? get productFeatures =>
      throw _privateConstructorUsedError; // @JsonKey(name: "product_behaviour") final List<ProductFeatures>? productBehaviour,
  @JsonKey(name: "about_the_products")
  Storage? get aboutProducts => throw _privateConstructorUsedError;
  @JsonKey(name: "usage_direction")
  Storage? get usageDirection => throw _privateConstructorUsedError;
  @JsonKey(name: "old_system_code")
  String? get oldSystemCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantMetaCopyWith<VariantMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantMetaCopyWith<$Res> {
  factory $VariantMetaCopyWith(
          VariantMeta value, $Res Function(VariantMeta) then) =
      _$VariantMetaCopyWithImpl<$Res>;
  $Res call(
      {Catelog? catelog,
      Storage? storage,
      Storage? Ingrediants,
      String? description,
      @JsonKey(name: "var_image") VarImage? image,
      @JsonKey(name: "important_info") ProductFeatures? importantInfo,
      @JsonKey(name: "product_behaviour") List<productBehaviour>? productBehave,
      @JsonKey(name: "Additional_info") ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts") ProductFeatures? nutriantFacts,
      @JsonKey(name: "product_details") ProductFeatures? productDetails,
      @JsonKey(name: "product_features") ProductFeatures? productFeatures,
      @JsonKey(name: "about_the_products") Storage? aboutProducts,
      @JsonKey(name: "usage_direction") Storage? usageDirection,
      @JsonKey(name: "old_system_code") String? oldSystemCode});

  $CatelogCopyWith<$Res>? get catelog;
  $StorageCopyWith<$Res>? get storage;
  $StorageCopyWith<$Res>? get Ingrediants;
  $VarImageCopyWith<$Res>? get image;
  $ProductFeaturesCopyWith<$Res>? get importantInfo;
  $ProductFeaturesCopyWith<$Res>? get additionalInfo;
  $ProductFeaturesCopyWith<$Res>? get nutriantFacts;
  $ProductFeaturesCopyWith<$Res>? get productDetails;
  $ProductFeaturesCopyWith<$Res>? get productFeatures;
  $StorageCopyWith<$Res>? get aboutProducts;
  $StorageCopyWith<$Res>? get usageDirection;
}

/// @nodoc
class _$VariantMetaCopyWithImpl<$Res> implements $VariantMetaCopyWith<$Res> {
  _$VariantMetaCopyWithImpl(this._value, this._then);

  final VariantMeta _value;
  // ignore: unused_field
  final $Res Function(VariantMeta) _then;

  @override
  $Res call({
    Object? catelog = freezed,
    Object? storage = freezed,
    Object? Ingrediants = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? importantInfo = freezed,
    Object? productBehave = freezed,
    Object? additionalInfo = freezed,
    Object? nutriantFacts = freezed,
    Object? productDetails = freezed,
    Object? productFeatures = freezed,
    Object? aboutProducts = freezed,
    Object? usageDirection = freezed,
    Object? oldSystemCode = freezed,
  }) {
    return _then(_value.copyWith(
      catelog: catelog == freezed
          ? _value.catelog
          : catelog // ignore: cast_nullable_to_non_nullable
              as Catelog?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as Storage?,
      Ingrediants: Ingrediants == freezed
          ? _value.Ingrediants
          : Ingrediants // ignore: cast_nullable_to_non_nullable
              as Storage?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as VarImage?,
      importantInfo: importantInfo == freezed
          ? _value.importantInfo
          : importantInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productBehave: productBehave == freezed
          ? _value.productBehave
          : productBehave // ignore: cast_nullable_to_non_nullable
              as List<productBehaviour>?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      nutriantFacts: nutriantFacts == freezed
          ? _value.nutriantFacts
          : nutriantFacts // ignore: cast_nullable_to_non_nullable
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
      usageDirection: usageDirection == freezed
          ? _value.usageDirection
          : usageDirection // ignore: cast_nullable_to_non_nullable
              as Storage?,
      oldSystemCode: oldSystemCode == freezed
          ? _value.oldSystemCode
          : oldSystemCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $CatelogCopyWith<$Res>? get catelog {
    if (_value.catelog == null) {
      return null;
    }

    return $CatelogCopyWith<$Res>(_value.catelog!, (value) {
      return _then(_value.copyWith(catelog: value));
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
  $StorageCopyWith<$Res>? get Ingrediants {
    if (_value.Ingrediants == null) {
      return null;
    }

    return $StorageCopyWith<$Res>(_value.Ingrediants!, (value) {
      return _then(_value.copyWith(Ingrediants: value));
    });
  }

  @override
  $VarImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $VarImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
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
  $ProductFeaturesCopyWith<$Res>? get nutriantFacts {
    if (_value.nutriantFacts == null) {
      return null;
    }

    return $ProductFeaturesCopyWith<$Res>(_value.nutriantFacts!, (value) {
      return _then(_value.copyWith(nutriantFacts: value));
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
abstract class _$VariantMetaCopyWith<$Res>
    implements $VariantMetaCopyWith<$Res> {
  factory _$VariantMetaCopyWith(
          _VariantMeta value, $Res Function(_VariantMeta) then) =
      __$VariantMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {Catelog? catelog,
      Storage? storage,
      Storage? Ingrediants,
      String? description,
      @JsonKey(name: "var_image") VarImage? image,
      @JsonKey(name: "important_info") ProductFeatures? importantInfo,
      @JsonKey(name: "product_behaviour") List<productBehaviour>? productBehave,
      @JsonKey(name: "Additional_info") ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts") ProductFeatures? nutriantFacts,
      @JsonKey(name: "product_details") ProductFeatures? productDetails,
      @JsonKey(name: "product_features") ProductFeatures? productFeatures,
      @JsonKey(name: "about_the_products") Storage? aboutProducts,
      @JsonKey(name: "usage_direction") Storage? usageDirection,
      @JsonKey(name: "old_system_code") String? oldSystemCode});

  @override
  $CatelogCopyWith<$Res>? get catelog;
  @override
  $StorageCopyWith<$Res>? get storage;
  @override
  $StorageCopyWith<$Res>? get Ingrediants;
  @override
  $VarImageCopyWith<$Res>? get image;
  @override
  $ProductFeaturesCopyWith<$Res>? get importantInfo;
  @override
  $ProductFeaturesCopyWith<$Res>? get additionalInfo;
  @override
  $ProductFeaturesCopyWith<$Res>? get nutriantFacts;
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
class __$VariantMetaCopyWithImpl<$Res> extends _$VariantMetaCopyWithImpl<$Res>
    implements _$VariantMetaCopyWith<$Res> {
  __$VariantMetaCopyWithImpl(
      _VariantMeta _value, $Res Function(_VariantMeta) _then)
      : super(_value, (v) => _then(v as _VariantMeta));

  @override
  _VariantMeta get _value => super._value as _VariantMeta;

  @override
  $Res call({
    Object? catelog = freezed,
    Object? storage = freezed,
    Object? Ingrediants = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? importantInfo = freezed,
    Object? productBehave = freezed,
    Object? additionalInfo = freezed,
    Object? nutriantFacts = freezed,
    Object? productDetails = freezed,
    Object? productFeatures = freezed,
    Object? aboutProducts = freezed,
    Object? usageDirection = freezed,
    Object? oldSystemCode = freezed,
  }) {
    return _then(_VariantMeta(
      catelog: catelog == freezed
          ? _value.catelog
          : catelog // ignore: cast_nullable_to_non_nullable
              as Catelog?,
      storage: storage == freezed
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as Storage?,
      Ingrediants: Ingrediants == freezed
          ? _value.Ingrediants
          : Ingrediants // ignore: cast_nullable_to_non_nullable
              as Storage?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as VarImage?,
      importantInfo: importantInfo == freezed
          ? _value.importantInfo
          : importantInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      productBehave: productBehave == freezed
          ? _value.productBehave
          : productBehave // ignore: cast_nullable_to_non_nullable
              as List<productBehaviour>?,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as ProductFeatures?,
      nutriantFacts: nutriantFacts == freezed
          ? _value.nutriantFacts
          : nutriantFacts // ignore: cast_nullable_to_non_nullable
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
      usageDirection: usageDirection == freezed
          ? _value.usageDirection
          : usageDirection // ignore: cast_nullable_to_non_nullable
              as Storage?,
      oldSystemCode: oldSystemCode == freezed
          ? _value.oldSystemCode
          : oldSystemCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantMeta implements _VariantMeta {
  const _$_VariantMeta(
      {this.catelog,
      this.storage,
      this.Ingrediants,
      this.description,
      @JsonKey(name: "var_image") this.image,
      @JsonKey(name: "important_info") this.importantInfo,
      @JsonKey(name: "product_behaviour") this.productBehave,
      @JsonKey(name: "Additional_info") this.additionalInfo,
      @JsonKey(name: "Nutriants_facts") this.nutriantFacts,
      @JsonKey(name: "product_details") this.productDetails,
      @JsonKey(name: "product_features") this.productFeatures,
      @JsonKey(name: "about_the_products") this.aboutProducts,
      @JsonKey(name: "usage_direction") this.usageDirection,
      @JsonKey(name: "old_system_code") this.oldSystemCode});

  factory _$_VariantMeta.fromJson(Map<String, dynamic> json) =>
      _$$_VariantMetaFromJson(json);

  @override
  final Catelog? catelog;
  @override
  final Storage? storage;
  @override
  final Storage? Ingrediants;
  @override
  final String? description;
  @override
  @JsonKey(name: "var_image")
  final VarImage? image;
  @override
  @JsonKey(name: "important_info")
  final ProductFeatures? importantInfo;
  @override
  @JsonKey(name: "product_behaviour")
  final List<productBehaviour>? productBehave;
  @override
  @JsonKey(name: "Additional_info")
  final ProductFeatures? additionalInfo;
  @override
  @JsonKey(name: "Nutriants_facts")
  final ProductFeatures? nutriantFacts;
  @override
  @JsonKey(name: "product_details")
  final ProductFeatures? productDetails;
  @override
  @JsonKey(name: "product_features")
  final ProductFeatures? productFeatures;
  @override // @JsonKey(name: "product_behaviour") final List<ProductFeatures>? productBehaviour,
  @JsonKey(name: "about_the_products")
  final Storage? aboutProducts;
  @override
  @JsonKey(name: "usage_direction")
  final Storage? usageDirection;
  @override
  @JsonKey(name: "old_system_code")
  final String? oldSystemCode;

  @override
  String toString() {
    return 'VariantMeta(catelog: $catelog, storage: $storage, Ingrediants: $Ingrediants, description: $description, image: $image, importantInfo: $importantInfo, productBehave: $productBehave, additionalInfo: $additionalInfo, nutriantFacts: $nutriantFacts, productDetails: $productDetails, productFeatures: $productFeatures, aboutProducts: $aboutProducts, usageDirection: $usageDirection, oldSystemCode: $oldSystemCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariantMeta &&
            (identical(other.catelog, catelog) ||
                const DeepCollectionEquality()
                    .equals(other.catelog, catelog)) &&
            (identical(other.storage, storage) ||
                const DeepCollectionEquality()
                    .equals(other.storage, storage)) &&
            (identical(other.Ingrediants, Ingrediants) ||
                const DeepCollectionEquality()
                    .equals(other.Ingrediants, Ingrediants)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.importantInfo, importantInfo) ||
                const DeepCollectionEquality()
                    .equals(other.importantInfo, importantInfo)) &&
            (identical(other.productBehave, productBehave) ||
                const DeepCollectionEquality()
                    .equals(other.productBehave, productBehave)) &&
            (identical(other.additionalInfo, additionalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.additionalInfo, additionalInfo)) &&
            (identical(other.nutriantFacts, nutriantFacts) ||
                const DeepCollectionEquality()
                    .equals(other.nutriantFacts, nutriantFacts)) &&
            (identical(other.productDetails, productDetails) ||
                const DeepCollectionEquality()
                    .equals(other.productDetails, productDetails)) &&
            (identical(other.productFeatures, productFeatures) ||
                const DeepCollectionEquality()
                    .equals(other.productFeatures, productFeatures)) &&
            (identical(other.aboutProducts, aboutProducts) ||
                const DeepCollectionEquality()
                    .equals(other.aboutProducts, aboutProducts)) &&
            (identical(other.usageDirection, usageDirection) ||
                const DeepCollectionEquality()
                    .equals(other.usageDirection, usageDirection)) &&
            (identical(other.oldSystemCode, oldSystemCode) ||
                const DeepCollectionEquality()
                    .equals(other.oldSystemCode, oldSystemCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(catelog) ^
      const DeepCollectionEquality().hash(storage) ^
      const DeepCollectionEquality().hash(Ingrediants) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(importantInfo) ^
      const DeepCollectionEquality().hash(productBehave) ^
      const DeepCollectionEquality().hash(additionalInfo) ^
      const DeepCollectionEquality().hash(nutriantFacts) ^
      const DeepCollectionEquality().hash(productDetails) ^
      const DeepCollectionEquality().hash(productFeatures) ^
      const DeepCollectionEquality().hash(aboutProducts) ^
      const DeepCollectionEquality().hash(usageDirection) ^
      const DeepCollectionEquality().hash(oldSystemCode);

  @JsonKey(ignore: true)
  @override
  _$VariantMetaCopyWith<_VariantMeta> get copyWith =>
      __$VariantMetaCopyWithImpl<_VariantMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantMetaToJson(this);
  }
}

abstract class _VariantMeta implements VariantMeta {
  const factory _VariantMeta(
      {Catelog? catelog,
      Storage? storage,
      Storage? Ingrediants,
      String? description,
      @JsonKey(name: "var_image")
          VarImage? image,
      @JsonKey(name: "important_info")
          ProductFeatures? importantInfo,
      @JsonKey(name: "product_behaviour")
          List<productBehaviour>? productBehave,
      @JsonKey(name: "Additional_info")
          ProductFeatures? additionalInfo,
      @JsonKey(name: "Nutriants_facts")
          ProductFeatures? nutriantFacts,
      @JsonKey(name: "product_details")
          ProductFeatures? productDetails,
      @JsonKey(name: "product_features")
          ProductFeatures? productFeatures,
      @JsonKey(name: "about_the_products")
          Storage? aboutProducts,
      @JsonKey(name: "usage_direction")
          Storage? usageDirection,
      @JsonKey(name: "old_system_code")
          String? oldSystemCode}) = _$_VariantMeta;

  factory _VariantMeta.fromJson(Map<String, dynamic> json) =
      _$_VariantMeta.fromJson;

  @override
  Catelog? get catelog => throw _privateConstructorUsedError;
  @override
  Storage? get storage => throw _privateConstructorUsedError;
  @override
  Storage? get Ingrediants => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "var_image")
  VarImage? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "important_info")
  ProductFeatures? get importantInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_behaviour")
  List<productBehaviour>? get productBehave =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Additional_info")
  ProductFeatures? get additionalInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "Nutriants_facts")
  ProductFeatures? get nutriantFacts => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_details")
  ProductFeatures? get productDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "product_features")
  ProductFeatures? get productFeatures => throw _privateConstructorUsedError;
  @override // @JsonKey(name: "product_behaviour") final List<ProductFeatures>? productBehaviour,
  @JsonKey(name: "about_the_products")
  Storage? get aboutProducts => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "usage_direction")
  Storage? get usageDirection => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "old_system_code")
  String? get oldSystemCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariantMetaCopyWith<_VariantMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

Storage _$StorageFromJson(Map<String, dynamic> json) {
  return _Storage.fromJson(json);
}

/// @nodoc
class _$StorageTearOff {
  const _$StorageTearOff();

  _Storage call(
      {String? name, @JsonKey(name: "key_values") List<dynamic>? keyValues}) {
    return _Storage(
      name: name,
      keyValues: keyValues,
    );
  }

  Storage fromJson(Map<String, Object> json) {
    return Storage.fromJson(json);
  }
}

/// @nodoc
const $Storage = _$StorageTearOff();

/// @nodoc
mixin _$Storage {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "key_values")
  List<dynamic>? get keyValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageCopyWith<Storage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageCopyWith<$Res> {
  factory $StorageCopyWith(Storage value, $Res Function(Storage) then) =
      _$StorageCopyWithImpl<$Res>;
  $Res call(
      {String? name, @JsonKey(name: "key_values") List<dynamic>? keyValues});
}

/// @nodoc
class _$StorageCopyWithImpl<$Res> implements $StorageCopyWith<$Res> {
  _$StorageCopyWithImpl(this._value, this._then);

  final Storage _value;
  // ignore: unused_field
  final $Res Function(Storage) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? keyValues = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValues: keyValues == freezed
          ? _value.keyValues
          : keyValues // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$StorageCopyWith<$Res> implements $StorageCopyWith<$Res> {
  factory _$StorageCopyWith(_Storage value, $Res Function(_Storage) then) =
      __$StorageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name, @JsonKey(name: "key_values") List<dynamic>? keyValues});
}

/// @nodoc
class __$StorageCopyWithImpl<$Res> extends _$StorageCopyWithImpl<$Res>
    implements _$StorageCopyWith<$Res> {
  __$StorageCopyWithImpl(_Storage _value, $Res Function(_Storage) _then)
      : super(_value, (v) => _then(v as _Storage));

  @override
  _Storage get _value => super._value as _Storage;

  @override
  $Res call({
    Object? name = freezed,
    Object? keyValues = freezed,
  }) {
    return _then(_Storage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValues: keyValues == freezed
          ? _value.keyValues
          : keyValues // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Storage implements _Storage {
  const _$_Storage({this.name, @JsonKey(name: "key_values") this.keyValues});

  factory _$_Storage.fromJson(Map<String, dynamic> json) =>
      _$$_StorageFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "key_values")
  final List<dynamic>? keyValues;

  @override
  String toString() {
    return 'Storage(name: $name, keyValues: $keyValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Storage &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.keyValues, keyValues) ||
                const DeepCollectionEquality()
                    .equals(other.keyValues, keyValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(keyValues);

  @JsonKey(ignore: true)
  @override
  _$StorageCopyWith<_Storage> get copyWith =>
      __$StorageCopyWithImpl<_Storage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorageToJson(this);
  }
}

abstract class _Storage implements Storage {
  const factory _Storage(
      {String? name,
      @JsonKey(name: "key_values") List<dynamic>? keyValues}) = _$_Storage;

  factory _Storage.fromJson(Map<String, dynamic> json) = _$_Storage.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "key_values")
  List<dynamic>? get keyValues => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StorageCopyWith<_Storage> get copyWith =>
      throw _privateConstructorUsedError;
}

VarImage _$VarImageFromJson(Map<String, dynamic> json) {
  return _VarImage.fromJson(json);
}

/// @nodoc
class _$VarImageTearOff {
  const _$VarImageTearOff();

  _VarImage call(
      {String? name, @JsonKey(name: "key_values") KeyValues1? keyValues}) {
    return _VarImage(
      name: name,
      keyValues: keyValues,
    );
  }

  VarImage fromJson(Map<String, Object> json) {
    return VarImage.fromJson(json);
  }
}

/// @nodoc
const $VarImage = _$VarImageTearOff();

/// @nodoc
mixin _$VarImage {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "key_values")
  KeyValues1? get keyValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VarImageCopyWith<VarImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VarImageCopyWith<$Res> {
  factory $VarImageCopyWith(VarImage value, $Res Function(VarImage) then) =
      _$VarImageCopyWithImpl<$Res>;
  $Res call({String? name, @JsonKey(name: "key_values") KeyValues1? keyValues});

  $KeyValues1CopyWith<$Res>? get keyValues;
}

/// @nodoc
class _$VarImageCopyWithImpl<$Res> implements $VarImageCopyWith<$Res> {
  _$VarImageCopyWithImpl(this._value, this._then);

  final VarImage _value;
  // ignore: unused_field
  final $Res Function(VarImage) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? keyValues = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValues: keyValues == freezed
          ? _value.keyValues
          : keyValues // ignore: cast_nullable_to_non_nullable
              as KeyValues1?,
    ));
  }

  @override
  $KeyValues1CopyWith<$Res>? get keyValues {
    if (_value.keyValues == null) {
      return null;
    }

    return $KeyValues1CopyWith<$Res>(_value.keyValues!, (value) {
      return _then(_value.copyWith(keyValues: value));
    });
  }
}

/// @nodoc
abstract class _$VarImageCopyWith<$Res> implements $VarImageCopyWith<$Res> {
  factory _$VarImageCopyWith(_VarImage value, $Res Function(_VarImage) then) =
      __$VarImageCopyWithImpl<$Res>;
  @override
  $Res call({String? name, @JsonKey(name: "key_values") KeyValues1? keyValues});

  @override
  $KeyValues1CopyWith<$Res>? get keyValues;
}

/// @nodoc
class __$VarImageCopyWithImpl<$Res> extends _$VarImageCopyWithImpl<$Res>
    implements _$VarImageCopyWith<$Res> {
  __$VarImageCopyWithImpl(_VarImage _value, $Res Function(_VarImage) _then)
      : super(_value, (v) => _then(v as _VarImage));

  @override
  _VarImage get _value => super._value as _VarImage;

  @override
  $Res call({
    Object? name = freezed,
    Object? keyValues = freezed,
  }) {
    return _then(_VarImage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValues: keyValues == freezed
          ? _value.keyValues
          : keyValues // ignore: cast_nullable_to_non_nullable
              as KeyValues1?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VarImage implements _VarImage {
  const _$_VarImage({this.name, @JsonKey(name: "key_values") this.keyValues});

  factory _$_VarImage.fromJson(Map<String, dynamic> json) =>
      _$$_VarImageFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "key_values")
  final KeyValues1? keyValues;

  @override
  String toString() {
    return 'VarImage(name: $name, keyValues: $keyValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VarImage &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.keyValues, keyValues) ||
                const DeepCollectionEquality()
                    .equals(other.keyValues, keyValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(keyValues);

  @JsonKey(ignore: true)
  @override
  _$VarImageCopyWith<_VarImage> get copyWith =>
      __$VarImageCopyWithImpl<_VarImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VarImageToJson(this);
  }
}

abstract class _VarImage implements VarImage {
  const factory _VarImage(
      {String? name,
      @JsonKey(name: "key_values") KeyValues1? keyValues}) = _$_VarImage;

  factory _VarImage.fromJson(Map<String, dynamic> json) = _$_VarImage.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "key_values")
  KeyValues1? get keyValues => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VarImageCopyWith<_VarImage> get copyWith =>
      throw _privateConstructorUsedError;
}

Catelog _$CatelogFromJson(Map<String, dynamic> json) {
  return _Catelog.fromJson(json);
}

/// @nodoc
class _$CatelogTearOff {
  const _$CatelogTearOff();

  _Catelog call(
      {String? name, @JsonKey(name: "key_values") KeyValues? keyValues}) {
    return _Catelog(
      name: name,
      keyValues: keyValues,
    );
  }

  Catelog fromJson(Map<String, Object> json) {
    return Catelog.fromJson(json);
  }
}

/// @nodoc
const $Catelog = _$CatelogTearOff();

/// @nodoc
mixin _$Catelog {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "key_values")
  KeyValues? get keyValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatelogCopyWith<Catelog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatelogCopyWith<$Res> {
  factory $CatelogCopyWith(Catelog value, $Res Function(Catelog) then) =
      _$CatelogCopyWithImpl<$Res>;
  $Res call({String? name, @JsonKey(name: "key_values") KeyValues? keyValues});

  $KeyValuesCopyWith<$Res>? get keyValues;
}

/// @nodoc
class _$CatelogCopyWithImpl<$Res> implements $CatelogCopyWith<$Res> {
  _$CatelogCopyWithImpl(this._value, this._then);

  final Catelog _value;
  // ignore: unused_field
  final $Res Function(Catelog) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? keyValues = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValues: keyValues == freezed
          ? _value.keyValues
          : keyValues // ignore: cast_nullable_to_non_nullable
              as KeyValues?,
    ));
  }

  @override
  $KeyValuesCopyWith<$Res>? get keyValues {
    if (_value.keyValues == null) {
      return null;
    }

    return $KeyValuesCopyWith<$Res>(_value.keyValues!, (value) {
      return _then(_value.copyWith(keyValues: value));
    });
  }
}

/// @nodoc
abstract class _$CatelogCopyWith<$Res> implements $CatelogCopyWith<$Res> {
  factory _$CatelogCopyWith(_Catelog value, $Res Function(_Catelog) then) =
      __$CatelogCopyWithImpl<$Res>;
  @override
  $Res call({String? name, @JsonKey(name: "key_values") KeyValues? keyValues});

  @override
  $KeyValuesCopyWith<$Res>? get keyValues;
}

/// @nodoc
class __$CatelogCopyWithImpl<$Res> extends _$CatelogCopyWithImpl<$Res>
    implements _$CatelogCopyWith<$Res> {
  __$CatelogCopyWithImpl(_Catelog _value, $Res Function(_Catelog) _then)
      : super(_value, (v) => _then(v as _Catelog));

  @override
  _Catelog get _value => super._value as _Catelog;

  @override
  $Res call({
    Object? name = freezed,
    Object? keyValues = freezed,
  }) {
    return _then(_Catelog(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValues: keyValues == freezed
          ? _value.keyValues
          : keyValues // ignore: cast_nullable_to_non_nullable
              as KeyValues?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Catelog implements _Catelog {
  const _$_Catelog({this.name, @JsonKey(name: "key_values") this.keyValues});

  factory _$_Catelog.fromJson(Map<String, dynamic> json) =>
      _$$_CatelogFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "key_values")
  final KeyValues? keyValues;

  @override
  String toString() {
    return 'Catelog(name: $name, keyValues: $keyValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Catelog &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.keyValues, keyValues) ||
                const DeepCollectionEquality()
                    .equals(other.keyValues, keyValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(keyValues);

  @JsonKey(ignore: true)
  @override
  _$CatelogCopyWith<_Catelog> get copyWith =>
      __$CatelogCopyWithImpl<_Catelog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatelogToJson(this);
  }
}

abstract class _Catelog implements Catelog {
  const factory _Catelog(
      {String? name,
      @JsonKey(name: "key_values") KeyValues? keyValues}) = _$_Catelog;

  factory _Catelog.fromJson(Map<String, dynamic> json) = _$_Catelog.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "key_values")
  KeyValues? get keyValues => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CatelogCopyWith<_Catelog> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyValues _$KeyValuesFromJson(Map<String, dynamic> json) {
  return _KeyValues.fromJson(json);
}

/// @nodoc
class _$KeyValuesTearOff {
  const _$KeyValuesTearOff();

  _KeyValues call(
      {String? catelog1,
      String? catelog2,
      String? catelog3,
      String? catelog4,
      String? catelog5,
      String? catelog6,
      String? catelog7,
      String? catelog8}) {
    return _KeyValues(
      catelog1: catelog1,
      catelog2: catelog2,
      catelog3: catelog3,
      catelog4: catelog4,
      catelog5: catelog5,
      catelog6: catelog6,
      catelog7: catelog7,
      catelog8: catelog8,
    );
  }

  KeyValues fromJson(Map<String, Object> json) {
    return KeyValues.fromJson(json);
  }
}

/// @nodoc
const $KeyValues = _$KeyValuesTearOff();

/// @nodoc
mixin _$KeyValues {
  String? get catelog1 => throw _privateConstructorUsedError;
  String? get catelog2 => throw _privateConstructorUsedError;
  String? get catelog3 => throw _privateConstructorUsedError;
  String? get catelog4 => throw _privateConstructorUsedError;
  String? get catelog5 => throw _privateConstructorUsedError;
  String? get catelog6 => throw _privateConstructorUsedError;
  String? get catelog7 => throw _privateConstructorUsedError;
  String? get catelog8 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyValuesCopyWith<KeyValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValuesCopyWith<$Res> {
  factory $KeyValuesCopyWith(KeyValues value, $Res Function(KeyValues) then) =
      _$KeyValuesCopyWithImpl<$Res>;
  $Res call(
      {String? catelog1,
      String? catelog2,
      String? catelog3,
      String? catelog4,
      String? catelog5,
      String? catelog6,
      String? catelog7,
      String? catelog8});
}

/// @nodoc
class _$KeyValuesCopyWithImpl<$Res> implements $KeyValuesCopyWith<$Res> {
  _$KeyValuesCopyWithImpl(this._value, this._then);

  final KeyValues _value;
  // ignore: unused_field
  final $Res Function(KeyValues) _then;

  @override
  $Res call({
    Object? catelog1 = freezed,
    Object? catelog2 = freezed,
    Object? catelog3 = freezed,
    Object? catelog4 = freezed,
    Object? catelog5 = freezed,
    Object? catelog6 = freezed,
    Object? catelog7 = freezed,
    Object? catelog8 = freezed,
  }) {
    return _then(_value.copyWith(
      catelog1: catelog1 == freezed
          ? _value.catelog1
          : catelog1 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog2: catelog2 == freezed
          ? _value.catelog2
          : catelog2 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog3: catelog3 == freezed
          ? _value.catelog3
          : catelog3 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog4: catelog4 == freezed
          ? _value.catelog4
          : catelog4 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog5: catelog5 == freezed
          ? _value.catelog5
          : catelog5 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog6: catelog6 == freezed
          ? _value.catelog6
          : catelog6 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog7: catelog7 == freezed
          ? _value.catelog7
          : catelog7 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog8: catelog8 == freezed
          ? _value.catelog8
          : catelog8 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$KeyValuesCopyWith<$Res> implements $KeyValuesCopyWith<$Res> {
  factory _$KeyValuesCopyWith(
          _KeyValues value, $Res Function(_KeyValues) then) =
      __$KeyValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? catelog1,
      String? catelog2,
      String? catelog3,
      String? catelog4,
      String? catelog5,
      String? catelog6,
      String? catelog7,
      String? catelog8});
}

/// @nodoc
class __$KeyValuesCopyWithImpl<$Res> extends _$KeyValuesCopyWithImpl<$Res>
    implements _$KeyValuesCopyWith<$Res> {
  __$KeyValuesCopyWithImpl(_KeyValues _value, $Res Function(_KeyValues) _then)
      : super(_value, (v) => _then(v as _KeyValues));

  @override
  _KeyValues get _value => super._value as _KeyValues;

  @override
  $Res call({
    Object? catelog1 = freezed,
    Object? catelog2 = freezed,
    Object? catelog3 = freezed,
    Object? catelog4 = freezed,
    Object? catelog5 = freezed,
    Object? catelog6 = freezed,
    Object? catelog7 = freezed,
    Object? catelog8 = freezed,
  }) {
    return _then(_KeyValues(
      catelog1: catelog1 == freezed
          ? _value.catelog1
          : catelog1 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog2: catelog2 == freezed
          ? _value.catelog2
          : catelog2 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog3: catelog3 == freezed
          ? _value.catelog3
          : catelog3 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog4: catelog4 == freezed
          ? _value.catelog4
          : catelog4 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog5: catelog5 == freezed
          ? _value.catelog5
          : catelog5 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog6: catelog6 == freezed
          ? _value.catelog6
          : catelog6 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog7: catelog7 == freezed
          ? _value.catelog7
          : catelog7 // ignore: cast_nullable_to_non_nullable
              as String?,
      catelog8: catelog8 == freezed
          ? _value.catelog8
          : catelog8 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KeyValues implements _KeyValues {
  const _$_KeyValues(
      {this.catelog1,
      this.catelog2,
      this.catelog3,
      this.catelog4,
      this.catelog5,
      this.catelog6,
      this.catelog7,
      this.catelog8});

  factory _$_KeyValues.fromJson(Map<String, dynamic> json) =>
      _$$_KeyValuesFromJson(json);

  @override
  final String? catelog1;
  @override
  final String? catelog2;
  @override
  final String? catelog3;
  @override
  final String? catelog4;
  @override
  final String? catelog5;
  @override
  final String? catelog6;
  @override
  final String? catelog7;
  @override
  final String? catelog8;

  @override
  String toString() {
    return 'KeyValues(catelog1: $catelog1, catelog2: $catelog2, catelog3: $catelog3, catelog4: $catelog4, catelog5: $catelog5, catelog6: $catelog6, catelog7: $catelog7, catelog8: $catelog8)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KeyValues &&
            (identical(other.catelog1, catelog1) ||
                const DeepCollectionEquality()
                    .equals(other.catelog1, catelog1)) &&
            (identical(other.catelog2, catelog2) ||
                const DeepCollectionEquality()
                    .equals(other.catelog2, catelog2)) &&
            (identical(other.catelog3, catelog3) ||
                const DeepCollectionEquality()
                    .equals(other.catelog3, catelog3)) &&
            (identical(other.catelog4, catelog4) ||
                const DeepCollectionEquality()
                    .equals(other.catelog4, catelog4)) &&
            (identical(other.catelog5, catelog5) ||
                const DeepCollectionEquality()
                    .equals(other.catelog5, catelog5)) &&
            (identical(other.catelog6, catelog6) ||
                const DeepCollectionEquality()
                    .equals(other.catelog6, catelog6)) &&
            (identical(other.catelog7, catelog7) ||
                const DeepCollectionEquality()
                    .equals(other.catelog7, catelog7)) &&
            (identical(other.catelog8, catelog8) ||
                const DeepCollectionEquality()
                    .equals(other.catelog8, catelog8)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(catelog1) ^
      const DeepCollectionEquality().hash(catelog2) ^
      const DeepCollectionEquality().hash(catelog3) ^
      const DeepCollectionEquality().hash(catelog4) ^
      const DeepCollectionEquality().hash(catelog5) ^
      const DeepCollectionEquality().hash(catelog6) ^
      const DeepCollectionEquality().hash(catelog7) ^
      const DeepCollectionEquality().hash(catelog8);

  @JsonKey(ignore: true)
  @override
  _$KeyValuesCopyWith<_KeyValues> get copyWith =>
      __$KeyValuesCopyWithImpl<_KeyValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeyValuesToJson(this);
  }
}

abstract class _KeyValues implements KeyValues {
  const factory _KeyValues(
      {String? catelog1,
      String? catelog2,
      String? catelog3,
      String? catelog4,
      String? catelog5,
      String? catelog6,
      String? catelog7,
      String? catelog8}) = _$_KeyValues;

  factory _KeyValues.fromJson(Map<String, dynamic> json) =
      _$_KeyValues.fromJson;

  @override
  String? get catelog1 => throw _privateConstructorUsedError;
  @override
  String? get catelog2 => throw _privateConstructorUsedError;
  @override
  String? get catelog3 => throw _privateConstructorUsedError;
  @override
  String? get catelog4 => throw _privateConstructorUsedError;
  @override
  String? get catelog5 => throw _privateConstructorUsedError;
  @override
  String? get catelog6 => throw _privateConstructorUsedError;
  @override
  String? get catelog7 => throw _privateConstructorUsedError;
  @override
  String? get catelog8 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KeyValuesCopyWith<_KeyValues> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyValues1 _$KeyValues1FromJson(Map<String, dynamic> json) {
  return _KeyValues1.fromJson(json);
}

/// @nodoc
class _$KeyValues1TearOff {
  const _$KeyValues1TearOff();

  _KeyValues1 call(
      {@JsonKey(name: "image_2") String? image2,
      @JsonKey(name: "image_3") String? image3,
      @JsonKey(name: "image_4") String? image4,
      @JsonKey(name: "image_5") String? image5}) {
    return _KeyValues1(
      image2: image2,
      image3: image3,
      image4: image4,
      image5: image5,
    );
  }

  KeyValues1 fromJson(Map<String, Object> json) {
    return KeyValues1.fromJson(json);
  }
}

/// @nodoc
const $KeyValues1 = _$KeyValues1TearOff();

/// @nodoc
mixin _$KeyValues1 {
  @JsonKey(name: "image_2")
  String? get image2 => throw _privateConstructorUsedError;
  @JsonKey(name: "image_3")
  String? get image3 => throw _privateConstructorUsedError;
  @JsonKey(name: "image_4")
  String? get image4 => throw _privateConstructorUsedError;
  @JsonKey(name: "image_5")
  String? get image5 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyValues1CopyWith<KeyValues1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValues1CopyWith<$Res> {
  factory $KeyValues1CopyWith(
          KeyValues1 value, $Res Function(KeyValues1) then) =
      _$KeyValues1CopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "image_2") String? image2,
      @JsonKey(name: "image_3") String? image3,
      @JsonKey(name: "image_4") String? image4,
      @JsonKey(name: "image_5") String? image5});
}

/// @nodoc
class _$KeyValues1CopyWithImpl<$Res> implements $KeyValues1CopyWith<$Res> {
  _$KeyValues1CopyWithImpl(this._value, this._then);

  final KeyValues1 _value;
  // ignore: unused_field
  final $Res Function(KeyValues1) _then;

  @override
  $Res call({
    Object? image2 = freezed,
    Object? image3 = freezed,
    Object? image4 = freezed,
    Object? image5 = freezed,
  }) {
    return _then(_value.copyWith(
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
abstract class _$KeyValues1CopyWith<$Res> implements $KeyValues1CopyWith<$Res> {
  factory _$KeyValues1CopyWith(
          _KeyValues1 value, $Res Function(_KeyValues1) then) =
      __$KeyValues1CopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "image_2") String? image2,
      @JsonKey(name: "image_3") String? image3,
      @JsonKey(name: "image_4") String? image4,
      @JsonKey(name: "image_5") String? image5});
}

/// @nodoc
class __$KeyValues1CopyWithImpl<$Res> extends _$KeyValues1CopyWithImpl<$Res>
    implements _$KeyValues1CopyWith<$Res> {
  __$KeyValues1CopyWithImpl(
      _KeyValues1 _value, $Res Function(_KeyValues1) _then)
      : super(_value, (v) => _then(v as _KeyValues1));

  @override
  _KeyValues1 get _value => super._value as _KeyValues1;

  @override
  $Res call({
    Object? image2 = freezed,
    Object? image3 = freezed,
    Object? image4 = freezed,
    Object? image5 = freezed,
  }) {
    return _then(_KeyValues1(
      image2: image2 == freezed
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KeyValues1 implements _KeyValues1 {
  const _$_KeyValues1(
      {@JsonKey(name: "image_2") this.image2,
      @JsonKey(name: "image_3") this.image3,
      @JsonKey(name: "image_4") this.image4,
      @JsonKey(name: "image_5") this.image5});

  factory _$_KeyValues1.fromJson(Map<String, dynamic> json) =>
      _$$_KeyValues1FromJson(json);

  @override
  @JsonKey(name: "image_2")
  final String? image2;
  @override
  @JsonKey(name: "image_3")
  final String? image3;
  @override
  @JsonKey(name: "image_4")
  final String? image4;
  @override
  @JsonKey(name: "image_5")
  final String? image5;

  @override
  String toString() {
    return 'KeyValues1(image2: $image2, image3: $image3, image4: $image4, image5: $image5)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KeyValues1 &&
            (identical(other.image2, image2) ||
                const DeepCollectionEquality().equals(other.image2, image2)) &&
            (identical(other.image3, image3) ||
                const DeepCollectionEquality().equals(other.image3, image3)) &&
            (identical(other.image4, image4) ||
                const DeepCollectionEquality().equals(other.image4, image4)) &&
            (identical(other.image5, image5) ||
                const DeepCollectionEquality().equals(other.image5, image5)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image2) ^
      const DeepCollectionEquality().hash(image3) ^
      const DeepCollectionEquality().hash(image4) ^
      const DeepCollectionEquality().hash(image5);

  @JsonKey(ignore: true)
  @override
  _$KeyValues1CopyWith<_KeyValues1> get copyWith =>
      __$KeyValues1CopyWithImpl<_KeyValues1>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeyValues1ToJson(this);
  }
}

abstract class _KeyValues1 implements KeyValues1 {
  const factory _KeyValues1(
      {@JsonKey(name: "image_2") String? image2,
      @JsonKey(name: "image_3") String? image3,
      @JsonKey(name: "image_4") String? image4,
      @JsonKey(name: "image_5") String? image5}) = _$_KeyValues1;

  factory _KeyValues1.fromJson(Map<String, dynamic> json) =
      _$_KeyValues1.fromJson;

  @override
  @JsonKey(name: "image_2")
  String? get image2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "image_3")
  String? get image3 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "image_4")
  String? get image4 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "image_5")
  String? get image5 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KeyValues1CopyWith<_KeyValues1> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductFeatures _$ProductFeaturesFromJson(Map<String, dynamic> json) {
  return _ProductFeatures.fromJson(json);
}

/// @nodoc
class _$ProductFeaturesTearOff {
  const _$ProductFeaturesTearOff();

  _ProductFeatures call(
      {String? name, @JsonKey(name: "key_values") List<Keys>? keyValues}) {
    return _ProductFeatures(
      name: name,
      keyValues: keyValues,
    );
  }

  ProductFeatures fromJson(Map<String, Object> json) {
    return ProductFeatures.fromJson(json);
  }
}

/// @nodoc
const $ProductFeatures = _$ProductFeaturesTearOff();

/// @nodoc
mixin _$ProductFeatures {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "key_values")
  List<Keys>? get keyValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductFeaturesCopyWith<ProductFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFeaturesCopyWith<$Res> {
  factory $ProductFeaturesCopyWith(
          ProductFeatures value, $Res Function(ProductFeatures) then) =
      _$ProductFeaturesCopyWithImpl<$Res>;
  $Res call({String? name, @JsonKey(name: "key_values") List<Keys>? keyValues});
}

/// @nodoc
class _$ProductFeaturesCopyWithImpl<$Res>
    implements $ProductFeaturesCopyWith<$Res> {
  _$ProductFeaturesCopyWithImpl(this._value, this._then);

  final ProductFeatures _value;
  // ignore: unused_field
  final $Res Function(ProductFeatures) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? keyValues = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValues: keyValues == freezed
          ? _value.keyValues
          : keyValues // ignore: cast_nullable_to_non_nullable
              as List<Keys>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductFeaturesCopyWith<$Res>
    implements $ProductFeaturesCopyWith<$Res> {
  factory _$ProductFeaturesCopyWith(
          _ProductFeatures value, $Res Function(_ProductFeatures) then) =
      __$ProductFeaturesCopyWithImpl<$Res>;
  @override
  $Res call({String? name, @JsonKey(name: "key_values") List<Keys>? keyValues});
}

/// @nodoc
class __$ProductFeaturesCopyWithImpl<$Res>
    extends _$ProductFeaturesCopyWithImpl<$Res>
    implements _$ProductFeaturesCopyWith<$Res> {
  __$ProductFeaturesCopyWithImpl(
      _ProductFeatures _value, $Res Function(_ProductFeatures) _then)
      : super(_value, (v) => _then(v as _ProductFeatures));

  @override
  _ProductFeatures get _value => super._value as _ProductFeatures;

  @override
  $Res call({
    Object? name = freezed,
    Object? keyValues = freezed,
  }) {
    return _then(_ProductFeatures(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      keyValues: keyValues == freezed
          ? _value.keyValues
          : keyValues // ignore: cast_nullable_to_non_nullable
              as List<Keys>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductFeatures implements _ProductFeatures {
  const _$_ProductFeatures(
      {this.name, @JsonKey(name: "key_values") this.keyValues});

  factory _$_ProductFeatures.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFeaturesFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "key_values")
  final List<Keys>? keyValues;

  @override
  String toString() {
    return 'ProductFeatures(name: $name, keyValues: $keyValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductFeatures &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.keyValues, keyValues) ||
                const DeepCollectionEquality()
                    .equals(other.keyValues, keyValues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(keyValues);

  @JsonKey(ignore: true)
  @override
  _$ProductFeaturesCopyWith<_ProductFeatures> get copyWith =>
      __$ProductFeaturesCopyWithImpl<_ProductFeatures>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductFeaturesToJson(this);
  }
}

abstract class _ProductFeatures implements ProductFeatures {
  const factory _ProductFeatures(
      {String? name,
      @JsonKey(name: "key_values") List<Keys>? keyValues}) = _$_ProductFeatures;

  factory _ProductFeatures.fromJson(Map<String, dynamic> json) =
      _$_ProductFeatures.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "key_values")
  List<Keys>? get keyValues => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductFeaturesCopyWith<_ProductFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

Keys _$KeysFromJson(Map<String, dynamic> json) {
  return _Keys.fromJson(json);
}

/// @nodoc
class _$KeysTearOff {
  const _$KeysTearOff();

  _Keys call({String? key, String? value}) {
    return _Keys(
      key: key,
      value: value,
    );
  }

  Keys fromJson(Map<String, Object> json) {
    return Keys.fromJson(json);
  }
}

/// @nodoc
const $Keys = _$KeysTearOff();

/// @nodoc
mixin _$Keys {
  String? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeysCopyWith<Keys> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeysCopyWith<$Res> {
  factory $KeysCopyWith(Keys value, $Res Function(Keys) then) =
      _$KeysCopyWithImpl<$Res>;
  $Res call({String? key, String? value});
}

/// @nodoc
class _$KeysCopyWithImpl<$Res> implements $KeysCopyWith<$Res> {
  _$KeysCopyWithImpl(this._value, this._then);

  final Keys _value;
  // ignore: unused_field
  final $Res Function(Keys) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$KeysCopyWith<$Res> implements $KeysCopyWith<$Res> {
  factory _$KeysCopyWith(_Keys value, $Res Function(_Keys) then) =
      __$KeysCopyWithImpl<$Res>;
  @override
  $Res call({String? key, String? value});
}

/// @nodoc
class __$KeysCopyWithImpl<$Res> extends _$KeysCopyWithImpl<$Res>
    implements _$KeysCopyWith<$Res> {
  __$KeysCopyWithImpl(_Keys _value, $Res Function(_Keys) _then)
      : super(_value, (v) => _then(v as _Keys));

  @override
  _Keys get _value => super._value as _Keys;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_Keys(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Keys implements _Keys {
  const _$_Keys({this.key, this.value});

  factory _$_Keys.fromJson(Map<String, dynamic> json) => _$$_KeysFromJson(json);

  @override
  final String? key;
  @override
  final String? value;

  @override
  String toString() {
    return 'Keys(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Keys &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$KeysCopyWith<_Keys> get copyWith =>
      __$KeysCopyWithImpl<_Keys>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeysToJson(this);
  }
}

abstract class _Keys implements Keys {
  const factory _Keys({String? key, String? value}) = _$_Keys;

  factory _Keys.fromJson(Map<String, dynamic> json) = _$_Keys.fromJson;

  @override
  String? get key => throw _privateConstructorUsedError;
  @override
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KeysCopyWith<_Keys> get copyWith => throw _privateConstructorUsedError;
}

AlternativeBarcode _$AlternativeBarcodeFromJson(Map<String, dynamic> json) {
  return _AlternativeBarcode.fromJson(json);
}

/// @nodoc
class _$AlternativeBarcodeTearOff {
  const _$AlternativeBarcodeTearOff();

  _AlternativeBarcode call(
      {int? id,
      String? barcode,
      String? qrcode,
      @JsonKey(name: "is_active") bool? isActive}) {
    return _AlternativeBarcode(
      id: id,
      barcode: barcode,
      qrcode: qrcode,
      isActive: isActive,
    );
  }

  AlternativeBarcode fromJson(Map<String, Object> json) {
    return AlternativeBarcode.fromJson(json);
  }
}

/// @nodoc
const $AlternativeBarcode = _$AlternativeBarcodeTearOff();

/// @nodoc
mixin _$AlternativeBarcode {
  int? get id => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get qrcode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlternativeBarcodeCopyWith<AlternativeBarcode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlternativeBarcodeCopyWith<$Res> {
  factory $AlternativeBarcodeCopyWith(
          AlternativeBarcode value, $Res Function(AlternativeBarcode) then) =
      _$AlternativeBarcodeCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? barcode,
      String? qrcode,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class _$AlternativeBarcodeCopyWithImpl<$Res>
    implements $AlternativeBarcodeCopyWith<$Res> {
  _$AlternativeBarcodeCopyWithImpl(this._value, this._then);

  final AlternativeBarcode _value;
  // ignore: unused_field
  final $Res Function(AlternativeBarcode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? qrcode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrcode: qrcode == freezed
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$AlternativeBarcodeCopyWith<$Res>
    implements $AlternativeBarcodeCopyWith<$Res> {
  factory _$AlternativeBarcodeCopyWith(
          _AlternativeBarcode value, $Res Function(_AlternativeBarcode) then) =
      __$AlternativeBarcodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? barcode,
      String? qrcode,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class __$AlternativeBarcodeCopyWithImpl<$Res>
    extends _$AlternativeBarcodeCopyWithImpl<$Res>
    implements _$AlternativeBarcodeCopyWith<$Res> {
  __$AlternativeBarcodeCopyWithImpl(
      _AlternativeBarcode _value, $Res Function(_AlternativeBarcode) _then)
      : super(_value, (v) => _then(v as _AlternativeBarcode));

  @override
  _AlternativeBarcode get _value => super._value as _AlternativeBarcode;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? qrcode = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_AlternativeBarcode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrcode: qrcode == freezed
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlternativeBarcode implements _AlternativeBarcode {
  const _$_AlternativeBarcode(
      {this.id,
      this.barcode,
      this.qrcode,
      @JsonKey(name: "is_active") this.isActive});

  factory _$_AlternativeBarcode.fromJson(Map<String, dynamic> json) =>
      _$$_AlternativeBarcodeFromJson(json);

  @override
  final int? id;
  @override
  final String? barcode;
  @override
  final String? qrcode;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'AlternativeBarcode(id: $id, barcode: $barcode, qrcode: $qrcode, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlternativeBarcode &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.qrcode, qrcode) ||
                const DeepCollectionEquality().equals(other.qrcode, qrcode)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(qrcode) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$AlternativeBarcodeCopyWith<_AlternativeBarcode> get copyWith =>
      __$AlternativeBarcodeCopyWithImpl<_AlternativeBarcode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlternativeBarcodeToJson(this);
  }
}

abstract class _AlternativeBarcode implements AlternativeBarcode {
  const factory _AlternativeBarcode(
      {int? id,
      String? barcode,
      String? qrcode,
      @JsonKey(name: "is_active") bool? isActive}) = _$_AlternativeBarcode;

  factory _AlternativeBarcode.fromJson(Map<String, dynamic> json) =
      _$_AlternativeBarcode.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  String? get qrcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlternativeBarcodeCopyWith<_AlternativeBarcode> get copyWith =>
      throw _privateConstructorUsedError;
}

NameStorage _$NameStorageFromJson(Map<String, dynamic> json) {
  return _NameStorage.fromJson(json);
}

/// @nodoc
class _$NameStorageTearOff {
  const _$NameStorageTearOff();

  _NameStorage call({String? name}) {
    return _NameStorage(
      name: name,
    );
  }

  NameStorage fromJson(Map<String, Object> json) {
    return NameStorage.fromJson(json);
  }
}

/// @nodoc
const $NameStorage = _$NameStorageTearOff();

/// @nodoc
mixin _$NameStorage {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameStorageCopyWith<NameStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameStorageCopyWith<$Res> {
  factory $NameStorageCopyWith(
          NameStorage value, $Res Function(NameStorage) then) =
      _$NameStorageCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$NameStorageCopyWithImpl<$Res> implements $NameStorageCopyWith<$Res> {
  _$NameStorageCopyWithImpl(this._value, this._then);

  final NameStorage _value;
  // ignore: unused_field
  final $Res Function(NameStorage) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NameStorageCopyWith<$Res>
    implements $NameStorageCopyWith<$Res> {
  factory _$NameStorageCopyWith(
          _NameStorage value, $Res Function(_NameStorage) then) =
      __$NameStorageCopyWithImpl<$Res>;
  @override
  $Res call({String? name});
}

/// @nodoc
class __$NameStorageCopyWithImpl<$Res> extends _$NameStorageCopyWithImpl<$Res>
    implements _$NameStorageCopyWith<$Res> {
  __$NameStorageCopyWithImpl(
      _NameStorage _value, $Res Function(_NameStorage) _then)
      : super(_value, (v) => _then(v as _NameStorage));

  @override
  _NameStorage get _value => super._value as _NameStorage;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameStorage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NameStorage implements _NameStorage {
  const _$_NameStorage({this.name});

  factory _$_NameStorage.fromJson(Map<String, dynamic> json) =>
      _$$_NameStorageFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'NameStorage(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameStorage &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameStorageCopyWith<_NameStorage> get copyWith =>
      __$NameStorageCopyWithImpl<_NameStorage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameStorageToJson(this);
  }
}

abstract class _NameStorage implements NameStorage {
  const factory _NameStorage({String? name}) = _$_NameStorage;

  factory _NameStorage.fromJson(Map<String, dynamic> json) =
      _$_NameStorage.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NameStorageCopyWith<_NameStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

productBehaviour _$productBehaviourFromJson(Map<String, dynamic> json) {
  return _productBehaviour.fromJson(json);
}

/// @nodoc
class _$productBehaviourTearOff {
  const _$productBehaviourTearOff();

  _productBehaviour call(
      {String? genderGroup,
      String? ageGroup,
      String? ethinik,
      String? countries,
      String? purpose}) {
    return _productBehaviour(
      genderGroup: genderGroup,
      ageGroup: ageGroup,
      ethinik: ethinik,
      countries: countries,
      purpose: purpose,
    );
  }

  productBehaviour fromJson(Map<String, Object> json) {
    return productBehaviour.fromJson(json);
  }
}

/// @nodoc
const $productBehaviour = _$productBehaviourTearOff();

/// @nodoc
mixin _$productBehaviour {
  String? get genderGroup => throw _privateConstructorUsedError;
  String? get ageGroup => throw _privateConstructorUsedError;
  String? get ethinik => throw _privateConstructorUsedError;
  String? get countries => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $productBehaviourCopyWith<productBehaviour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $productBehaviourCopyWith<$Res> {
  factory $productBehaviourCopyWith(
          productBehaviour value, $Res Function(productBehaviour) then) =
      _$productBehaviourCopyWithImpl<$Res>;
  $Res call(
      {String? genderGroup,
      String? ageGroup,
      String? ethinik,
      String? countries,
      String? purpose});
}

/// @nodoc
class _$productBehaviourCopyWithImpl<$Res>
    implements $productBehaviourCopyWith<$Res> {
  _$productBehaviourCopyWithImpl(this._value, this._then);

  final productBehaviour _value;
  // ignore: unused_field
  final $Res Function(productBehaviour) _then;

  @override
  $Res call({
    Object? genderGroup = freezed,
    Object? ageGroup = freezed,
    Object? ethinik = freezed,
    Object? countries = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_value.copyWith(
      genderGroup: genderGroup == freezed
          ? _value.genderGroup
          : genderGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      ageGroup: ageGroup == freezed
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      ethinik: ethinik == freezed
          ? _value.ethinik
          : ethinik // ignore: cast_nullable_to_non_nullable
              as String?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$productBehaviourCopyWith<$Res>
    implements $productBehaviourCopyWith<$Res> {
  factory _$productBehaviourCopyWith(
          _productBehaviour value, $Res Function(_productBehaviour) then) =
      __$productBehaviourCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? genderGroup,
      String? ageGroup,
      String? ethinik,
      String? countries,
      String? purpose});
}

/// @nodoc
class __$productBehaviourCopyWithImpl<$Res>
    extends _$productBehaviourCopyWithImpl<$Res>
    implements _$productBehaviourCopyWith<$Res> {
  __$productBehaviourCopyWithImpl(
      _productBehaviour _value, $Res Function(_productBehaviour) _then)
      : super(_value, (v) => _then(v as _productBehaviour));

  @override
  _productBehaviour get _value => super._value as _productBehaviour;

  @override
  $Res call({
    Object? genderGroup = freezed,
    Object? ageGroup = freezed,
    Object? ethinik = freezed,
    Object? countries = freezed,
    Object? purpose = freezed,
  }) {
    return _then(_productBehaviour(
      genderGroup: genderGroup == freezed
          ? _value.genderGroup
          : genderGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      ageGroup: ageGroup == freezed
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      ethinik: ethinik == freezed
          ? _value.ethinik
          : ethinik // ignore: cast_nullable_to_non_nullable
              as String?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_productBehaviour implements _productBehaviour {
  const _$_productBehaviour(
      {this.genderGroup,
      this.ageGroup,
      this.ethinik,
      this.countries,
      this.purpose});

  factory _$_productBehaviour.fromJson(Map<String, dynamic> json) =>
      _$$_productBehaviourFromJson(json);

  @override
  final String? genderGroup;
  @override
  final String? ageGroup;
  @override
  final String? ethinik;
  @override
  final String? countries;
  @override
  final String? purpose;

  @override
  String toString() {
    return 'productBehaviour(genderGroup: $genderGroup, ageGroup: $ageGroup, ethinik: $ethinik, countries: $countries, purpose: $purpose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _productBehaviour &&
            (identical(other.genderGroup, genderGroup) ||
                const DeepCollectionEquality()
                    .equals(other.genderGroup, genderGroup)) &&
            (identical(other.ageGroup, ageGroup) ||
                const DeepCollectionEquality()
                    .equals(other.ageGroup, ageGroup)) &&
            (identical(other.ethinik, ethinik) ||
                const DeepCollectionEquality()
                    .equals(other.ethinik, ethinik)) &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(genderGroup) ^
      const DeepCollectionEquality().hash(ageGroup) ^
      const DeepCollectionEquality().hash(ethinik) ^
      const DeepCollectionEquality().hash(countries) ^
      const DeepCollectionEquality().hash(purpose);

  @JsonKey(ignore: true)
  @override
  _$productBehaviourCopyWith<_productBehaviour> get copyWith =>
      __$productBehaviourCopyWithImpl<_productBehaviour>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_productBehaviourToJson(this);
  }
}

abstract class _productBehaviour implements productBehaviour {
  const factory _productBehaviour(
      {String? genderGroup,
      String? ageGroup,
      String? ethinik,
      String? countries,
      String? purpose}) = _$_productBehaviour;

  factory _productBehaviour.fromJson(Map<String, dynamic> json) =
      _$_productBehaviour.fromJson;

  @override
  String? get genderGroup => throw _privateConstructorUsedError;
  @override
  String? get ageGroup => throw _privateConstructorUsedError;
  @override
  String? get ethinik => throw _privateConstructorUsedError;
  @override
  String? get countries => throw _privateConstructorUsedError;
  @override
  String? get purpose => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$productBehaviourCopyWith<_productBehaviour> get copyWith =>
      throw _privateConstructorUsedError;
}
