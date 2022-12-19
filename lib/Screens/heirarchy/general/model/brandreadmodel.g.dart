// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brandreadmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandReadModel _$$_BrandReadModelFromJson(Map<String, dynamic> json) =>
    _$_BrandReadModel(
      description: json['description'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      image: json['image'] as String?,
      id: json['id'] as int?,
      brandIdentifierUrl: json['brand_identifier_url'] as String?,
      parentCode: json['parent_code'] as String?,
      parentName: json['parent_name'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_BrandReadModelToJson(_$_BrandReadModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'code': instance.code,
      'image': instance.image,
      'id': instance.id,
      'brand_identifier_url': instance.brandIdentifierUrl,
      'parent_code': instance.parentCode,
      'parent_name': instance.parentName,
      'is_active': instance.isActive,
    };
