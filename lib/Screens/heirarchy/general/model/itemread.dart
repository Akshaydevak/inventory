import 'package:freezed_annotation/freezed_annotation.dart';
part 'itemread.g.dart';
part 'itemread.freezed.dart';

@freezed
class ItemReadModel with _$ItemReadModel {
  const factory ItemReadModel({
    final int? id,
    final String? code,
    final String? description,
    final String? name,
    final String? image1,
    final String? image2,
    final String? image3,
    final Barcode? barcode,


    @JsonKey(name: "uom_code") final String? uomCode,
    @JsonKey(name: "uom_group_code") final String? uomGroupCode,
    @JsonKey(name: "uom_group_name") final String? uomGroupName,
    @JsonKey(name: "uom_group_id") final int? uomGroupId,
    @JsonKey(name: "uom_name") final String? uomName,
    @JsonKey(name: "division_id") final int? divisionId,
    @JsonKey(name: "category_id") final int? categoryId,
    @JsonKey(name: "sub_category_id") final int? subCategoryId,

    @JsonKey(name: "group_code") final String? groupCode,
    @JsonKey(name: "group_name") final String? groupName,
    @JsonKey(name: "brand_code") final String? brandCode,
    @JsonKey(name: "brand_name") final String? brandName,
    @JsonKey(name: "material_code") final String? materialCode,
    @JsonKey(name: "material_name") final String? materialName,
    @JsonKey(name: "old_system_code") final String? oldSystemCode,
    @JsonKey(name: "static_group_code") final String? staticGroupCode,
    @JsonKey(name: "division_code") final String? divisionCode,
    @JsonKey(name: "division_name") final String? divisionName,
    @JsonKey(name: "category_code") final String? categoryCode,
    @JsonKey(name: "category_name") final String? categoryName,
    @JsonKey(name: "sub_category_code") final String? subCategoryCode,
    @JsonKey(name: "sub_category_name") final String? subCategoryName,
    @JsonKey(name: "static_group_name") final String? staticGroupName,
    @JsonKey(name: "variant_framework_code") final String? variantFrameWork,
    @JsonKey(name: "variant_framwork_name") final String? variantFrameWorkName,
    @JsonKey(name: "item_meta") final ItemMeta? itemMeta,
    @JsonKey(name: "qr_code") final QrCode? qrCode,
    @JsonKey(name: "search_name") final String? searchName,
    @JsonKey(name: "display_name") final String? displayname,
    @JsonKey(name: "is_active",defaultValue: false) final bool? isActive,
    @JsonKey(name: "sales_block",defaultValue: false) final bool? salesBlock,
    @JsonKey(name: "purchase_block",defaultValue: false) final bool? purchaseBlock,
    @JsonKey(name: "item_cataloge1") final String? itemCatelog1,
    @JsonKey(name: "item_cataloge2") final String? itemCatelog2,
    @JsonKey(name: "item_cataloge3") final String? itemCatelog3,
    @JsonKey(name: "item_cataloge4") final String? itemCatelog4,
    @JsonKey(name: "item_cataloge5") final String? itemCatelog5,


  }) = _ItemReadModel;
  factory ItemReadModel.fromJson(Map<String, dynamic> json) =>
      _$ItemReadModelFromJson(json);
}


@freezed
class Barcode with _$Barcode {
  const factory Barcode({
    final int? key,




    @JsonKey(name: "file_name") final String? fileName,
    @JsonKey(name: "barcode_number") final String? barcodeNumber,



  }) = _Barcode;
  factory Barcode.fromJson(Map<String, dynamic> json) =>
      _$BarcodeFromJson(json);
}

@freezed
class QrCode with _$QrCode {
  const factory QrCode({
    final int? key,
    final String? content,




    @JsonKey(name: "file_name") final String? fileName,
    @JsonKey(name: "qrcode_number") final String? qrCodeNumber,




  }) = _QrCode;
  factory QrCode.fromJson(Map<String, dynamic> json) =>
      _$QrCodeFromJson(json);
}

@freezed
class ItemMeta with _$ItemMeta {
  const factory ItemMeta({
    final String? description,








  }) = _ItemMeta;
  factory ItemMeta.fromJson(Map<String, dynamic> json) =>
      _$ItemMetaFromJson(json);
}
