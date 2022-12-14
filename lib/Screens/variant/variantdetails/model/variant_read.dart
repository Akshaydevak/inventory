import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory/Screens/heirarchy/general/model/itemread.dart';

part 'variant_read.g.dart';
part 'variant_read.freezed.dart';

@freezed
class VariantReadModel with _$VariantReadModel {
  const factory VariantReadModel({
    final int? id,

    final String? code,
    final double? vat,
    final String? description,
    final String? name,
    final String? image1,
    final String? image2,
    final String? image3,
    final Barcode? barcode,
    final QrCode? qrcode,
    final Dimension? dimension,


    @JsonKey(name: "uom_code") final String? uomCode,
    @JsonKey(name: "variantframework_id") final int? variantFrameWorkId,
    @JsonKey(name: "uom_id") final String? uomId,
    @JsonKey(name: "inventory_id") final String? inventoryId,
    @JsonKey(name: "uom_group_name") final String? uomGroupName,
    @JsonKey(name: "reorder_point") final int? reOrderPoint,
    @JsonKey(name: "sibling_code") final String? siblingCode,
    @JsonKey(name: "reorder_quantity") final int? reOrderQuantity,
    @JsonKey(name: "linked_item") final String? linkedItem,
    @JsonKey(name: "var_alternative_barcode") final List<AlternativeBarcode>? alterNativeBarcode,
    @JsonKey(name: "var_alternative_qrcode") final List<AlternativeBarcode>? alterNativeQrCode,
    @JsonKey(name: "unit_cost") final double? unitCost,
    @JsonKey(name: "weight_uom_id") final int? weightUomId,
    @JsonKey(name: "max_sales_order_limit") final int? maxSaleOrderLimit,
    @JsonKey(name: "min_sales_order_limit") final int? minSaleOrderLimit,
    @JsonKey(name: "actual_cost") final double? actualCost,
    @JsonKey(name: "return_type_options") final List<String>? returType,
    @JsonKey(name: "safty_stock") final int? safetyStock,
    @JsonKey(name: "min_purchase_order_limit") final int? minPurchaseOrderLimit,
    @JsonKey(name: "max_purchase_order_limit") final int? maxPurchaseOrderLimit,
    @JsonKey(name: "manufacture_id") final int? manuFacturedId,
    @JsonKey(name: "manufacture_name") final String? manuFacturedName,
    @JsonKey(name: "need_multiple_integration") final bool? needMultipleIntegration,
    @JsonKey(name: "avrg_gp") final double? avgGp,
    @JsonKey(name: "return_type") final String ? returnType,
    @JsonKey(name: "return_time") final int ? returnTime,
    @JsonKey(name: "max_gp") final double? maxGp,
    @JsonKey(name: "min_gp") final double? minGap,
    @JsonKey(name: "targeted_gp") final double? targetedGp,
    @JsonKey(name: "excess_tax") final double? excessTax,
    @JsonKey(name: "landing_cost") final double? landingCost,
    @JsonKey(name: "uom_name_data") final UomNameData? uomNameData,
    @JsonKey(name: "sales_uom_data") final SalesUomData? salesUomData,
    @JsonKey(name: "vendor_details") final List<VendorDetails>? vendorDetails,
    @JsonKey(name: "purchase_uom_data") final PurchaseUomData? purchaseUomdata,
    @JsonKey(name: "variant_framework_data") final VariantFrameWork? variantframeWork,
    @JsonKey(name: "variant_meta") final VariantMeta? variantMeta,
    @JsonKey(name: "item_data") final ItemData? itemData,
    @JsonKey(name: "search_name") final String? searchName,
    // @JsonKey(name: "manufacture_name") final String? manufacturedName,
    @JsonKey(name: "sales_uom") final String? SalesUom,
    @JsonKey(name: "gross_weight") final String? grossWeight,
    @JsonKey(name: "produced_country") final String? producedCountry,
    @JsonKey(name: "net_weight") final String? netWeight,
    @JsonKey(name: "pos_name") final String? posName,
    @JsonKey(name: "display_name") final String? displayname,
    @JsonKey(name: "purchase_uom") final String? purchaseuom,
    @JsonKey(name: "vedio_url") final String? vdeioUrl,
    @JsonKey(name: "arabic_description") final String? arabicDescription,
    @JsonKey(name: "additional_description") final String? additionalDescription,

    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "sales_block",defaultValue: false) final bool? salesBlock,
    @JsonKey(name: "purchase_block",defaultValue: false) final bool? purchaseBlock,
    @JsonKey(name: "item_catalog",defaultValue: false) final bool? itemCatalog,
    @JsonKey(name: "item_image",defaultValue: false) final bool? itemImage,

    @JsonKey(name: "stock_warning",defaultValue: false) final bool? stockWarning,
    @JsonKey(name: "item_cataloge1") final String? itemCatelog1,
    @JsonKey(name: "item_cataloge2") final String? itemCatelog2,
    @JsonKey(name: "item_cataloge3") final String? itemCatelog3,
    @JsonKey(name: "item_cataloge4") final String? itemCatelog4,
    @JsonKey(name: "shelf_type") final String? shelfType,
    @JsonKey(name: "shelf_time") final int? shelfTime,
    @JsonKey(name: "have_gift_option",defaultValue: false) final bool? haveGiftOption,
    @JsonKey(name: "have_wrap_option",defaultValue: false) final bool? haveWrapOption,


  }) = _VariantReadModel;
  factory VariantReadModel.fromJson(Map<String, dynamic> json) =>
      _$VariantReadModelFromJson(json);
}

@freezed
class SalesUomData with _$SalesUomData {
  const factory SalesUomData({
    final int? key,





    @JsonKey(name: "sales_uom_name") final String? salesUomName,
    @JsonKey(name: "sales_uom_code") final String? salesUomCode,




  }) = _SalesUomData;
  factory SalesUomData.fromJson(Map<String, dynamic> json) =>
      _$SalesUomDataFromJson(json);
}
@freezed
class Dimension with _$Dimension{
  const factory Dimension({
    final double? height,
    final double? width,
    final double? length,
    final double? weight,




  }) = _Dimension;
  factory Dimension.fromJson(Map<String, dynamic> json) =>
      _$DimensionFromJson(json);
}
@freezed
class VendorDetails with _$VendorDetails {
  const factory VendorDetails({






    @JsonKey(name: "vendor_reference_code") final String? vendorReerenceCode,
    @JsonKey(name: "vendor_name") final String? vendorName,
    @JsonKey(name: "vendor_code") final String? vendorCode,




  }) = _VendorDetails;
  factory VendorDetails.fromJson(Map<String, dynamic> json) =>
      _$VendorDetailsFromJson(json);
}

@freezed
class UomNameData with _$UomNameData {
  const factory UomNameData({
    final int? key,





    @JsonKey(name: "uom_name") final String? uomName,
    @JsonKey(name: "uom_code") final String? uomCode,




  }) = _UomNameData;
  factory UomNameData.fromJson(Map<String, dynamic> json) =>
      _$UomNameDataFromJson(json);
}


@freezed
class PurchaseUomData with _$PurchaseUomData {
  const factory PurchaseUomData({
    final int? key,





    @JsonKey(name: "purchase_uom_name") final String? purchaseUomName,
    @JsonKey(name: "purchase_uom_code") final String? purchaseUomCode,




  }) = _PurchaseUomData;
  factory PurchaseUomData.fromJson(Map<String, dynamic> json) =>
      _$PurchaseUomDataFromJson(json);
}


@freezed
class VariantFrameWork with _$VariantFrameWork {
  const factory VariantFrameWork({
    final int? key,





    @JsonKey(name: "variant_framewrok_name") final String? variantFrameWork,
    @JsonKey(name: "variant_framewrok_code") final String? variantFrameWorkCode,




  }) = _VariantFrameWork;
  factory VariantFrameWork.fromJson(Map<String, dynamic> json) =>
      _$VariantFrameWorkFromJson(json);
}

@freezed
class ItemData with _$ItemData {
  const factory ItemData({
    @JsonKey(name: "item_name") final String? itemName,
    @JsonKey(name: "item_code") final String? itemCode,
    final String? description,








  }) = _ItemData;
  factory ItemData.fromJson(Map<String, dynamic> json) =>
      _$ItemDataFromJson(json);
}



@freezed
class VariantMeta with _$VariantMeta {
  const factory VariantMeta({
final Catelog? catelog,
 final Storage? storage,
final Storage? Ingrediants,
final String? description,
    @JsonKey(name: "var_image") final VarImage? image,
    @JsonKey(name: "important_info") final  ProductFeatures? importantInfo,
    @JsonKey(name: "product_behaviour") final List< productBehaviour>? productBehave,
    @JsonKey(name: "Additional_info") final ProductFeatures? additionalInfo,
    @JsonKey(name: "Nutriants_facts") final  ProductFeatures?  nutriantFacts,
    @JsonKey(name: "product_details") final ProductFeatures? productDetails,
    @JsonKey(name: "product_features") final ProductFeatures? productFeatures,
    // @JsonKey(name: "product_behaviour") final List<ProductFeatures>? productBehaviour,
    @JsonKey(name: "about_the_products") final Storage? aboutProducts,

    @JsonKey(name: "usage_direction") final Storage? usageDirection,
    @JsonKey(name: "old_system_code") final String? oldSystemCode,








  }) = _VariantMeta;
  factory VariantMeta.fromJson(Map<String, dynamic> json) =>
      _$VariantMetaFromJson(json);
}
@freezed
  class Storage with _$Storage {
  const factory Storage({
    final String? name,
    @JsonKey(name: "key_values") final List<dynamic>? keyValues,








  }) = _Storage;
  factory Storage.fromJson(Map<String, dynamic> json) =>
      _$StorageFromJson(json);
}

@freezed
class VarImage with _$VarImage {
  const factory VarImage({
    final String? name,
    @JsonKey(name: "key_values") final KeyValues1? keyValues,








  }) = _VarImage;
  factory VarImage.fromJson(Map<String, dynamic> json) =>
      _$VarImageFromJson(json);
}
@freezed
class Catelog with _$Catelog {
  const factory Catelog({
   final String? name,
    @JsonKey(name: "key_values") final KeyValues? keyValues,








  }) = _Catelog;
  factory Catelog.fromJson(Map<String, dynamic> json) =>
      _$CatelogFromJson(json);
}


@freezed
class KeyValues with _$KeyValues {
  const factory KeyValues({
    final String? catelog1,
    final String? catelog2, final String? catelog3,
    final String? catelog4,
    final String? catelog5,
    final String? catelog6,
    final String? catelog7,
    final String? catelog8,










  }) = _KeyValues;
  factory KeyValues.fromJson(Map<String, dynamic> json) =>
      _$KeyValuesFromJson(json);
}

@freezed
class KeyValues1 with _$KeyValues1 {
  const factory KeyValues1({





    @JsonKey(name:"image_2") final String? image2,
    @JsonKey(name:"image_3") final String? image3,
    @JsonKey(name:"image_4") final String? image4,
    @JsonKey(name:"image_5") final String? image5,









  }) = _KeyValues1;
  factory KeyValues1.fromJson(Map<String, dynamic> json) =>
      _$KeyValues1FromJson(json);
}


@freezed
class ProductFeatures  with _$ProductFeatures {
  const factory ProductFeatures ({
    final String? name,
    @JsonKey(name: "key_values") final List<Keys>? keyValues,










  }) = _ProductFeatures ;
  factory ProductFeatures .fromJson(Map<String, dynamic> json) =>
      _$ProductFeaturesFromJson(json);
}

@freezed
class Keys  with _$Keys {
  const factory Keys ({
    final String? key,
    final String? value,











  }) = _Keys ;
  factory Keys .fromJson(Map<String, dynamic> json) =>
      _$KeysFromJson(json);
}
@freezed
class AlternativeBarcode with _$AlternativeBarcode {
  const factory AlternativeBarcode({
    final int? id,
    final String? barcode,
    final String? qrcode,





    @JsonKey(name: "is_active") final bool? isActive,





  }) = _AlternativeBarcode;
  factory AlternativeBarcode.fromJson(Map<String, dynamic> json) =>
      _$AlternativeBarcodeFromJson(json);
}

@freezed
class NameStorage with _$NameStorage {
  const factory NameStorage({

    final String? name,












  }) = _NameStorage;
  factory NameStorage.fromJson(Map<String, dynamic> json) =>
      _$NameStorageFromJson(json);
}





@freezed
class productBehaviour with _$productBehaviour {
  const factory productBehaviour({

    final String? genderGroup,
    final String? ageGroup,
    final String? ethinik,
    final String? countries,
    final String? purpose,












  }) = _productBehaviour;
  factory productBehaviour.fromJson(Map<String, dynamic> json) =>
      _$productBehaviourFromJson(json);
}


@freezed
class StateList with _$StateList {
  const factory StateList({

    final int? code,
    final String? name,













  }) = _StateList;
  factory StateList.fromJson(Map<String, dynamic> json) =>
      _$StateListFromJson(json);
}