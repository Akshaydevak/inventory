// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_read2_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantCreationRead2Model _$$_VariantCreationRead2ModelFromJson(
        Map<String, dynamic> json) =>
    _$_VariantCreationRead2Model(
      id: json['id'] as int?,
      variantframework: json['variantframework'] as int?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
      attributeName: json['attribute_name'] as String?,
      attributeId: json['attribute_id'] as int?,
      attributeType: json['attribute_type'] as String?,
      attributeCode: json['attribute_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VariantCreationRead2ModelToJson(
        _$_VariantCreationRead2Model instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variantframework': instance.variantframework,
      'values': instance.values,
      'attribute_name': instance.attributeName,
      'attribute_id': instance.attributeId,
      'attribute_type': instance.attributeType,
      'attribute_code': instance.attributeCode,
      'is_active': instance.isActive,
    };
