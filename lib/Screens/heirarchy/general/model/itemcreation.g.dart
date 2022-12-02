// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemcreation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemCreationModel _$$_ItemCreationModelFromJson(Map<String, dynamic> json) =>
    _$_ItemCreationModel(
      name: json['name'] as String?,
      barcode: json['barcode'] as String?,
      description: json['description'] as String?,
      image1: json['image1'] as int?,
      image2: json['image2'] as int?,
      image3: json['image3'] as int?,
      qrCode: json['qr_code'] as String?,
      materialCode: json['material_code'] as String?,
      uomGroupCode: json['uom_group_code'] as String?,
      uomCode: json['uom_code'] as String?,
      groupCode: json['group_code'] as String?,
      brandCode: json['brand_code'] as String?,
      staticGroupCode: json['static_group_code'] as String?,
      variantFrameWorkCode: json['variant_framework_code'] as String?,
      oldsystemCode: json['old_system_code'] as String?,
      searchName: json['search_name'] as String?,
      displayName: json['display_name'] as String?,
      itemCatelog1: json['item_cataloge1'] as int?,
      itemCatelog2: json['item_cataloge2'] as int?,
      itemCatelog3: json['item_cataloge3'] as int?,
      itemCatelog4: json['item_cataloge4'] as int?,
      itemCatelog5: json['item_cataloge5'] as int?,
      salesBlock: json['sales_block'] as bool? ?? false,
      purchaseBlock: json['purchase_block'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ItemCreationModelToJson(
        _$_ItemCreationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'barcode': instance.barcode,
      'description': instance.description,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'qr_code': instance.qrCode,
      'material_code': instance.materialCode,
      'uom_group_code': instance.uomGroupCode,
      'uom_code': instance.uomCode,
      'group_code': instance.groupCode,
      'brand_code': instance.brandCode,
      'static_group_code': instance.staticGroupCode,
      'variant_framework_code': instance.variantFrameWorkCode,
      'old_system_code': instance.oldsystemCode,
      'search_name': instance.searchName,
      'display_name': instance.displayName,
      'item_cataloge1': instance.itemCatelog1,
      'item_cataloge2': instance.itemCatelog2,
      'item_cataloge3': instance.itemCatelog3,
      'item_cataloge4': instance.itemCatelog4,
      'item_cataloge5': instance.itemCatelog5,
      'sales_block': instance.salesBlock,
      'purchase_block': instance.purchaseBlock,
    };
