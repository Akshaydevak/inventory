// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variantframeworkpost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantFrameworkPostModel _$$_VariantFrameworkPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_VariantFrameworkPostModel(
      name: json['name'] as String?,
      barcode: json['barcode'] as String?,
      description: json['description'] as String?,
      categoryId: json['category_id'] as int?,
      variantLineList: (json['variant_lines_list'] as List<dynamic>?)
          ?.map((e) => VariantLineListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      purchaseBlock: json['purchaseBlock'] as bool?,
    );

Map<String, dynamic> _$$_VariantFrameworkPostModelToJson(
        _$_VariantFrameworkPostModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'barcode': instance.barcode,
      'description': instance.description,
      'category_id': instance.categoryId,
      'variant_lines_list': instance.variantLineList,
      'purchaseBlock': instance.purchaseBlock,
    };

_$_VariantLineListModel _$$_VariantLineListModelFromJson(
        Map<String, dynamic> json) =>
    _$_VariantLineListModel(
      attributeId: json['attribute_id'] as int?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
      purchaseBlock: json['purchaseBlock'] as bool?,
    );

Map<String, dynamic> _$$_VariantLineListModelToJson(
        _$_VariantLineListModel instance) =>
    <String, dynamic>{
      'attribute_id': instance.attributeId,
      'values': instance.values,
      'purchaseBlock': instance.purchaseBlock,
    };

_$_AttributeListModel _$$_AttributeListModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttributeListModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      attributeTypes: (json['attribute_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      attributeType: json['attribute_type'] as String?,
      attributeName: json['attribute_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AttributeListModelToJson(
        _$_AttributeListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'attribute_types': instance.attributeTypes,
      'attribute_type': instance.attributeType,
      'attribute_name': instance.attributeName,
      'is_active': instance.isActive,
    };
