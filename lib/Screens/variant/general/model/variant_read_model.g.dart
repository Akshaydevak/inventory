// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_read_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantCreationReadModel _$$_VariantCreationReadModelFromJson(
        Map<String, dynamic> json) =>
    _$_VariantCreationReadModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      variantFrameWork: json['variant_framework_code'] as String?,
      variantFrameWorkName: json['variant_framework_name'] as String?,
    );

Map<String, dynamic> _$$_VariantCreationReadModelToJson(
        _$_VariantCreationReadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'variant_framework_code': instance.variantFrameWork,
      'variant_framework_name': instance.variantFrameWorkName,
    };
