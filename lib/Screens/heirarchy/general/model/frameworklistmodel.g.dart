// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frameworklistmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FrameWorkListModel _$$_FrameWorkListModelFromJson(
        Map<String, dynamic> json) =>
    _$_FrameWorkListModel(
      code: json['code'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      id: json['id'] as int?,
      categoryCode: json['category_code'] as String?,
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => AttributesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FrameWorkListModelToJson(
        _$_FrameWorkListModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'status': instance.status,
      'name': instance.name,
      'category': instance.category,
      'id': instance.id,
      'category_code': instance.categoryCode,
      'attributes': instance.attributes,
    };

_$_AttributesModel _$$_AttributesModelFromJson(Map<String, dynamic> json) =>
    _$_AttributesModel(
      values: json['values'] as List<dynamic>?,
      attrributeId: json['attribute_id'] as int?,
      attrributeName: json['attribute_name'] as String?,
      attrributeType: json['attribute_type'] as String?,
    );

Map<String, dynamic> _$$_AttributesModelToJson(_$_AttributesModel instance) =>
    <String, dynamic>{
      'values': instance.values,
      'attribute_id': instance.attrributeId,
      'attribute_name': instance.attrributeName,
      'attribute_type': instance.attrributeType,
    };

_$_VariantFrameWorkPostModel _$$_VariantFrameWorkPostModelFromJson(
        Map<String, dynamic> json) =>
    _$_VariantFrameWorkPostModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      code: json['code'] as String?,
      values: json['values'] as List<dynamic>?,
      categoryId: json['category_id'] as int?,
      categoryName: json['category_name'] as String?,
      variantListModel: (json['variant_lines_list'] as List<dynamic>?)
          ?.map(
              (e) => VariantLinesLiostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lines: (json['lines'] as List<dynamic>?)
          ?.map(
              (e) => VariantLinesLiostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      attrributeType: json['attribute_type'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$_VariantFrameWorkPostModelToJson(
        _$_VariantFrameWorkPostModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'code': instance.code,
      'values': instance.values,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'variant_lines_list': instance.variantListModel,
      'lines': instance.lines,
      'attribute_type': instance.attrributeType,
      'is_active': instance.isActive,
    };

_$_VariantLinesLiostModel _$$_VariantLinesLiostModelFromJson(
        Map<String, dynamic> json) =>
    _$_VariantLinesLiostModel(
      id: json['id'] as int?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
      attributeId: json['attribute_id'] as int?,
      name: json['attribute_name'] as String?,
      type: json['attribute_type'] as String?,
      attributeCode: json['attribute_code'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$_VariantLinesLiostModelToJson(
        _$_VariantLinesLiostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'values': instance.values,
      'attribute_id': instance.attributeId,
      'attribute_name': instance.name,
      'attribute_type': instance.type,
      'attribute_code': instance.attributeCode,
      'is_active': instance.isActive,
    };
