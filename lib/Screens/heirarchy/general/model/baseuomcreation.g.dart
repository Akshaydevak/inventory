// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseuomcreation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseUomCreationtModel _$$_BaseUomCreationtModelFromJson(
        Map<String, dynamic> json) =>
    _$_BaseUomCreationtModel(
      name: json['name'] as String?,
      baseEquivalent: json['base_equivalent'] as String?,
      uomGroupCode: json['uomgroup_code'] as String?,
      shortName: json['short_name'] as String?,
      uomGroupName: json['uomgroup_name'] as String?,
      uomCode: json['uom_code'] as String?,
      standardCode: json['standard_code'] as String?,
      conversionFactor: json['conversion_factor'] as int?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_BaseUomCreationtModelToJson(
        _$_BaseUomCreationtModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'base_equivalent': instance.baseEquivalent,
      'uomgroup_code': instance.uomGroupCode,
      'short_name': instance.shortName,
      'uomgroup_name': instance.uomGroupName,
      'uom_code': instance.uomCode,
      'standard_code': instance.standardCode,
      'conversion_factor': instance.conversionFactor,
      'is_active': instance.isActive,
    };
