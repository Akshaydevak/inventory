// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemReadModel _$$_ItemReadModelFromJson(Map<String, dynamic> json) =>
    _$_ItemReadModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      image1: json['image1'] as String?,
      image2: json['image2'] as String?,
      image3: json['image3'] as String?,
      barcode: json['barcode'] == null
          ? null
          : Barcode.fromJson(json['barcode'] as Map<String, dynamic>),
      uomCode: json['uom_code'] as String?,
      uomGroupCode: json['uom_group_code'] as String?,
      uomGroupName: json['uom_group_name'] as String?,
      uomGroupId: json['uom_group_id'] as int?,
      uomName: json['uom_name'] as String?,
      divisionId: json['division_id'] as int?,
      categoryId: json['category_id'] as int?,
      subCategoryId: json['sub_category_id'] as int?,
      groupCode: json['group_code'] as String?,
      groupName: json['group_name'] as String?,
      brandCode: json['brand_code'] as String?,
      brandName: json['brand_name'] as String?,
      materialCode: json['material_code'] as String?,
      materialName: json['material_name'] as String?,
      oldSystemCode: json['old_system_code'] as String?,
      staticGroupCode: json['static_group_code'] as String?,
      divisionCode: json['division_code'] as String?,
      divisionName: json['division_name'] as String?,
      categoryCode: json['category_code'] as String?,
      categoryName: json['category_name'] as String?,
      subCategoryCode: json['sub_category_code'] as String?,
      subCategoryName: json['sub_category_name'] as String?,
      staticGroupName: json['static_group_name'] as String?,
      variantFrameWork: json['variant_framework_code'] as String?,
      variantFrameWorkName: json['variant_framwork_name'] as String?,
      itemMeta: json['item_meta'] == null
          ? null
          : ItemMeta.fromJson(json['item_meta'] as Map<String, dynamic>),
      qrCode: json['qr_code'] == null
          ? null
          : QrCode.fromJson(json['qr_code'] as Map<String, dynamic>),
      searchName: json['search_name'] as String?,
      displayname: json['display_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
      salesBlock: json['sales_block'] as bool? ?? false,
      purchaseBlock: json['purchase_block'] as bool? ?? false,
      itemCatelog1: json['item_cataloge1'] as String?,
      itemCatelog2: json['item_cataloge2'] as String?,
      itemCatelog3: json['item_cataloge3'] as String?,
      itemCatelog4: json['item_cataloge4'] as String?,
      itemCatelog5: json['item_cataloge5'] as String?,
    );

Map<String, dynamic> _$$_ItemReadModelToJson(_$_ItemReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'name': instance.name,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'barcode': instance.barcode,
      'uom_code': instance.uomCode,
      'uom_group_code': instance.uomGroupCode,
      'uom_group_name': instance.uomGroupName,
      'uom_group_id': instance.uomGroupId,
      'uom_name': instance.uomName,
      'division_id': instance.divisionId,
      'category_id': instance.categoryId,
      'sub_category_id': instance.subCategoryId,
      'group_code': instance.groupCode,
      'group_name': instance.groupName,
      'brand_code': instance.brandCode,
      'brand_name': instance.brandName,
      'material_code': instance.materialCode,
      'material_name': instance.materialName,
      'old_system_code': instance.oldSystemCode,
      'static_group_code': instance.staticGroupCode,
      'division_code': instance.divisionCode,
      'division_name': instance.divisionName,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'sub_category_code': instance.subCategoryCode,
      'sub_category_name': instance.subCategoryName,
      'static_group_name': instance.staticGroupName,
      'variant_framework_code': instance.variantFrameWork,
      'variant_framwork_name': instance.variantFrameWorkName,
      'item_meta': instance.itemMeta,
      'qr_code': instance.qrCode,
      'search_name': instance.searchName,
      'display_name': instance.displayname,
      'is_active': instance.isActive,
      'sales_block': instance.salesBlock,
      'purchase_block': instance.purchaseBlock,
      'item_cataloge1': instance.itemCatelog1,
      'item_cataloge2': instance.itemCatelog2,
      'item_cataloge3': instance.itemCatelog3,
      'item_cataloge4': instance.itemCatelog4,
      'item_cataloge5': instance.itemCatelog5,
    };

_$_Barcode _$$_BarcodeFromJson(Map<String, dynamic> json) => _$_Barcode(
      key: json['key'] as int?,
      fileName: json['file_name'] as String?,
      barcodeNumber: json['barcode_number'] as String?,
    );

Map<String, dynamic> _$$_BarcodeToJson(_$_Barcode instance) =>
    <String, dynamic>{
      'key': instance.key,
      'file_name': instance.fileName,
      'barcode_number': instance.barcodeNumber,
    };

_$_QrCode _$$_QrCodeFromJson(Map<String, dynamic> json) => _$_QrCode(
      key: json['key'] as int?,
      content: json['content'] as String?,
      fileName: json['file_name'] as String?,
      qrCodeNumber: json['qrcode_number'] as String?,
    );

Map<String, dynamic> _$$_QrCodeToJson(_$_QrCode instance) => <String, dynamic>{
      'key': instance.key,
      'content': instance.content,
      'file_name': instance.fileName,
      'qrcode_number': instance.qrCodeNumber,
    };

_$_ItemMeta _$$_ItemMetaFromJson(Map<String, dynamic> json) => _$_ItemMeta(
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ItemMetaToJson(_$_ItemMeta instance) =>
    <String, dynamic>{
      'description': instance.description,
    };
