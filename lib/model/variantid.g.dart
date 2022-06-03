// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variantid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantId _$$_VariantIdFromJson(Map<String, dynamic> json) => _$_VariantId(
      id: json['id'] as int?,
      code: json['code'] as String?,
      category: json['category'] as String?,
      uom: json['uom'] as String?,
      unit_cost: (json['unit_cost'] as num?)?.toDouble(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_VariantIdToJson(_$_VariantId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'category': instance.category,
      'uom': instance.uom,
      'unit_cost': instance.unit_cost,
      'name': instance.name,
    };
