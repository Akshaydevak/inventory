// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listbrand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandListModel _$$_BrandListModelFromJson(Map<String, dynamic> json) =>
    _$_BrandListModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      standardCode: json['standard_code'] as String?,
      variantFrameWorkName: json['variant_framework_name'] as String?,
      uomCode: json['uom_code'] as String?,
    );

Map<String, dynamic> _$$_BrandListModelToJson(_$_BrandListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'standard_code': instance.standardCode,
      'variant_framework_name': instance.variantFrameWorkName,
      'uom_code': instance.uomCode,
    };
