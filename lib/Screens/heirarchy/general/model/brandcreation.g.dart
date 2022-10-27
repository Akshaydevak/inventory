// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brandcreation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandCreationtModel _$$_BrandCreationtModelFromJson(
        Map<String, dynamic> json) =>
    _$_BrandCreationtModel(
      description: json['description'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      brandIdentifierUrl: json['brand_identifier_url'] as String?,
      parentCode: json['parent_code'] as String?,
      isActive: json['is_active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_BrandCreationtModelToJson(
        _$_BrandCreationtModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'image': instance.image,
      'brand_identifier_url': instance.brandIdentifierUrl,
      'parent_code': instance.parentCode,
      'is_active': instance.isActive,
    };
